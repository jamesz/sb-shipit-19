const {analyzeSyntax} = require("./integrations/google_language");
const {log, logHeader, logDocumentText} = require('./utils/logger');
const files = require('./utils/files');

require('dotenv').config();
console.log(process.env.BLOB_STORAGE);

async function extract_clauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with google machine line api`);
    const blah = await analyzeSyntax(documentText);

    log(blah);
}

function extract() {
    log('Loading sample documents');
    const fileNames = files.getSampleFileNames();
    fileNames.forEach(async fileName => {
        const documentText = files.readDocumentText(fileName);
        const clauses = await extract_clauses(fileName, documentText);
    });
    console.log('Extraction completed!');
}

extract();