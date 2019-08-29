const {upload} = require("./integrations/azure_blob_storage");
const {runIndex, getDocument} = require("./integrations/azure_search");
const files = require("./utils/files");
const {log} = require("./utils/logger");

require('dotenv').config();
console.log(process.env.BLOB_STORAGE);

async function crack_documents() {
  log('Starting to crack documents');
  try {
    const fileNames = files.getSampleFileNames();
    const promises = fileNames.map(filename => upload(filename));
    const blobs = await Promise.all(promises);

    await runIndex();

    await Promise.all(blobs.map(async ({blob_name, uri}) => {
      log(`${blob_name} - retrieving plaintext document`);
      const {id, languageCode, content} = await getDocument(blob_name);

      files.writeDocumentText(blob_name, content);
    }));
  } catch (e) {
    log(e);
  }
}

crack_documents();