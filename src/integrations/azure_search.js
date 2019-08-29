const {getBlobInfo} = require('./azure_blob_storage');
const {log} = require('../utils/logger');
const {sleep} = require('../utils/promise_utils');
const axios = require('axios');

const runIndex = async () => {
  const url = `${process.env.SEARCH_BASE_URL}/indexers/smb-shipit-cracker/run`;
  const config = get_search_config();
  log('running indexer');
  await axios.post(url, {}, config);

  log('waiting for indexer to complete');
  await sleep(1000 * 10);
};

const getDocument = async (fileName) => {
  const url = `${process.env.SEARCH_BASE_URL}/indexes/smb-shipit-cracker/docs/search`;
  const config = get_search_config();

  const {blob_name, uri: blob_uri} = getBlobInfo(fileName);

  const resp = await axios.post(url, {
    "search": "",
    "select": "id, content, languageCode",
    "filter": `storage_uri eq '${blob_uri}'`
  }, config);

  if (resp.status !== 200) {
    log(`${blob_name} - failed while attempting to retrieve document from search index`);
    return null;
  }

  const {value} = resp.data;
  if (!value) {
    log(`${blob_name} - document not found in search index`);
    return null;
  }

  return value[0];
};

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
  runIndex,
  getDocument
};