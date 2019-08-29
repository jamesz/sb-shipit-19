const {sleep} = require('./utils/promise_utils');
const {log} = require('./utils/logger');
const {SAMPLES_FOLDER} = require('./utils/files');
const axios = require('axios');
const path = require('path');
const storage = require('azure-storage');

async function crack_document(load_type, fileName) {
    const blobInfo = await uploadBlob(load_type, fileName);
    await run_indexer(blobInfo);

    const content = await get_document(blobInfo);
    return content;
}

function uploadBlob(load_type, fileName) {
    return new Promise((resolve, reject) => {
        const blobService = storage.createBlobService(process.env.BLOB_STORAGE);
        blobService.createContainerIfNotExists("shipit", { publicAccessLevel: 'blob' }, err => {
            if (err) {
                reject(err);
            }
        });

        const fullPath = path.resolve(`${SAMPLES_FOLDER}/${fileName}`);
        const blobName = create_source_blob_name(load_type, fileName);
        blobService.createBlockBlobFromLocalFile("shipit", `source/${load_type}_${fileName}`, fullPath, (err, result, response) => {
            if (err) {
                reject(err);
            } else {
                log(`${blobName} - uploaded to blob storage`);
                resolve({ 
                    blobName, 
                    blobUri:  `${process.env.BLOB_URI}/source/${blobName}`
                });
            }
        });
    });
}

const run_indexer = async () => {
    try {
        const url = `${process.env.SEARCH_BASE_URL}/indexers/smb-shipit-cracker/run`;
        const config = get_search_config();
        await axios.post(url, {}, config);
        await sleep(1000 * 10);
    } catch (e) {
        log(e);
        return ;
    }
};

const get_document = async ({blobName, blobUri}) => {
    const url = `${process.env.SEARCH_BASE_URL}/indexes/smb-shipit-cracker/docs/search`;
    const config = get_search_config();
    const resp = await axios.post(url, {
        "search": "",
        "select": "id, content, languageCode",
        "filter": `storage_uri eq '${blobUri}'`
    }, config);

    if (resp.status !== 200) {
        log(`${blobName} - failed while attempting to retrieve document from search index`);
        return null;
    }

    const {value} = resp.data;
    if (!value) {
        log(`${blobName} - document not found in search index`);
        return null;
    }

    return value[0];
};

const create_source_blob_name = (load_type, fileName) => `${load_type}_${fileName}`;

const get_search_config = () => ({
    headers: {
        "api-key": process.env.SEARCH_API_KEY,
        "Content-Type": "application/json"
    },
    params: {
        "api-version": "2019-05-06"
    }
});

module.exports = {
    crack_document
};