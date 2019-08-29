const {getBlobInfo} = require('./azure_blob_storage');
const {log} = require('../utils/logger');
const {sleep} = require('../utils/promise_utils');
const axios = require('axios');

const runIndexer = async (indexName) => {
    const url = `${process.env.SEARCH_BASE_URL}/indexers/${indexName}/run`;
    const config = get_search_config();
    log('running indexer');
    try {
        await axios.post(url, {}, config);

        log('waiting for indexer to complete');

    } catch (err) {
        const {response} = err;
        if (response.status !== 409)
            throw err;
    }

    await sleep(1000 * 10);
};

const indexCracker = () => runIndexer('smb-shipit-cracker');

const indexStaging = () => runIndexer('smb-shipit-clauselib-loader');

const getById = async (id, index = "smb-shipit-clauselib-staging") => {
    const url = `${process.env.SEARCH_BASE_URL}/indexes/${index}/docs/${id}`;
    const config = get_search_config();
    try {
        const resp = await axios.get(url, config);
        return resp.data;
    } catch (err) {
        const {response} = err;
        if (response.status === 404)
            return null;

        throw err;
    }
};

const search = async (searchText, firmId, index = "smb-shipit-clauselib-staging") => {
    const url = `${process.env.SEARCH_BASE_URL}/indexes/${index}/docs/search`;
    const config = get_search_config();
    const resp = await axios.post(url, {
        "search": searchText,
        "searchFields": "clauseText",
        ...firm_search_params(firmId)
    }, config);

    return resp.data;
};

const moreLikeThis = async (id, firmId, index = "smb-shipit-clauselib-staging") => {
    const url = `${process.env.SEARCH_BASE_URL}/indexes/${index}/docs/search`;
    const config = get_search_config();
    try {
        const resp = await axios.post(url, {
            "searchFields": "clauseText",
            "moreLikeThis": id,
            ...firm_search_params(firmId)
        }, config);

        const {value} = resp.data;
        return value;

    } catch (err) {
        log(`${id} - ${JSON.stringify(err.response)}`);
        return null;
    }
};

const getDocument = async (fileName) => {
    const url = `${process.env.SEARCH_BASE_URL}/indexes/smb-shipit-cracker/docs/search`;
    const config = get_search_config();

    const {blob_name, uri: blob_uri} = getBlobInfo(fileName);
    try {
        const resp = await axios.post(url, {
            "search": "",
            "select": "id, content, languageCode",
            "filter": `storage_uri eq '${blob_uri}'`
        }, config).then(response => {
            if (response.status >= 200 && response.status <= 299) {
                return response;
            }

            throw new {
                status: response.status,
                data: response.data
            };
        });

        if (resp.status !== 200) {
            log(`${blob_name} - failed while attempting to retrieve document from search index`);
            return null;
        }

        const {value} = resp.data;
        if (!value.length) {
            log(`${blob_name} - document not found in search index, key: ${blob_uri}`);
            return null;
        }

        return {success: true, ...value[0]};
    } catch (err) {
        const {message} = err;
        if (message.includes("status code 503")){
            return { success: false, status: 503, blob_name, blob_uri };
        }

        throw err;
    }
};

const get_search_config = () => ({
    headers: {
        "api-key": process.env.SEARCH_API_KEY,
        "Content-Type": "application/json"
    },
    params: {
        "api-version": "2019-05-06-Preview"
    }
});

const firm_search_params = (firmId) => ({
   "filter": `firmId eq '${firmId}'`
});

module.exports = {
    indexCracker,
    indexStaging,
    getById,
    moreLikeThis,
    search,
    getDocument
};