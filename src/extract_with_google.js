const {log, logHeader, logDocumentText} = require('./utils/logger');
const {crack_document} = require('./integrations');
const files = require('./utils/files');

require('dotenv').config();
console.log(process.env.BLOB_STORAGE);

async function extract_text(fileName) {
    logHeader(fileName);
    log(`${fileName} - extracting document text with azure text extraction service`);
    const {id, languageCode, content} = await crack_document('google', fileName);

    logDocumentText(content);
    return content;
}

function extract_clauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with google machine line api`)
}

function extract() {

    log('Initialising AI');
    log('Starting extraction');
    log('Loading sample documents');
    const fileNames = files.getSampleFileNames();
    fileNames.forEach(async fileName => {
        const documentText = await extract_text(fileName);
        const clauses = extract_clauses(fileName, documentText);
    });
    console.log('Extraction completed!');
}

extract();