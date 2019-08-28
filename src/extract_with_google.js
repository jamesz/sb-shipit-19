const {log, logHeader} = require('./utils/logger');
const sample = require('./utils/samples');

function extract_text(fileName) {
    logHeader(fileName);
    log(`${fileName} - extracting document text with azure text extraction service`);
    const documentText = '......';
    return documentText;
}

function extract_clauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with google machine line api`)
}

function extract() {

    log('Initialising AI');
    log('Starting extraction');
    log('Loading sample documents');
    const fileNames = sample.getFileNames();
    fileNames.forEach(fileName => {
        const documentText = extract_text(fileName);
        const clauses = extract_clauses(fileName, documentText);
    })
    console.log('Extraction completed!');
}

extract();