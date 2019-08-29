const {SAMPLES_FOLDER} = require('../utils/files');
const {log} = require('../utils/logger');
const path = require('path');
const storage = require('azure-storage');
const querystring = require("querystring");
const CONTAINER_NAME = "shipit";

const upload = (fileName) => {
    return new Promise((resolve, reject) => {
        const blobService = storage.createBlobService(process.env.BLOB_STORAGE);
        blobService.createContainerIfNotExists(CONTAINER_NAME, { publicAccessLevel: 'blob' }, err => {
            if (err) {
                reject(err);
            }
        });

        const fullPath = path.resolve(`${SAMPLES_FOLDER}/${fileName}`);
        const blobName = fileName;
        blobService.createBlockBlobFromLocalFile(CONTAINER_NAME, `source/${fileName}`, fullPath, (err, result, response) => {
            if (err) {
                reject(err);
            } else {
                log(`${blobName} - uploaded to blob storage`);
                resolve(getBlobInfo(fileName));
            }
        });
    });
};

const addStagingBlob = ({id, data}) => new Promise(((resolve, reject) => {
    const blobService = storage.createBlobService(process.env.BLOB_STORAGE);
    blobService.createContainerIfNotExists(CONTAINER_NAME, { publicAccessLevel: 'blob' }, err => {
        if (err) {
            reject(err);
        }
    });

    const blobName = `${id}.json`;
    const content = JSON.stringify(data);
    blobService.createBlockBlobFromText(CONTAINER_NAME, `raw_clause_source/${blobName}`, content, err => {
        if (err) {
            reject(err);
        } else {
            resolve({ id });
        }
    });
}));

const getBlobInfo = (fileName) => {
    //const encoded = encodeURIComponent(fileName);
    const encoded = querystring.escape(fileName);
    return ({
        blob_name: fileName,
        uri: `${process.env.BLOB_URI}/source/${encoded}`
    });
};

module.exports = {
    upload,
    addStagingBlob,
    getBlobInfo
};