const {upload} = require("./integrations/azure_blob_storage");
const {indexCracker, getDocument} = require("./integrations/azure_search");
const files = require("./utils/files");
const {log} = require("./utils/logger");
const {sleep} = require("./utils/promise_utils");

require('dotenv').config();
console.log(process.env.BLOB_STORAGE);

async function crack_documents() {
  log('Starting to crack documents');
  try {
    const fileNames = files.getSampleFileNames();

    if (!process.env.DOWNLOAD_ONLY) {
      const promises = fileNames.map(filename => upload(filename));
      await Promise.all(promises);
      await indexCracker();
    }


    await Promise.all(fileNames.map(async fileName => {
      log(`${fileName} - retrieving plaintext document`);
      const response = await getDocument(fileName) || {};
      const {success, ...others} = response || {success: false};
      if (!success && others.status === 503) {
        await sleep(1000 * 10);
      }

      const {id, content} = others;
      if (!id) return;

      files.writeDocumentText(fileName, content);
    }));
  } catch (e) {
    log(e);
  }
}

crack_documents();