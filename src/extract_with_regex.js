const {log, logHeader, logDocumentText} = require('./utils/logger');
const files = require('./utils/files');

function extract_text(fileName) {
    log(`${fileName} - extracting document text`)
    const textFileName = files.getTextFileName(fileName);
    const documentText = files.readTextFile(textFileName);
    logDocumentText(documentText);
    return documentText;
}

function extract_clauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with regex`)
}

function extract() {
    logHeader('Starting extraction with REGEX');

    // clean up existing output files
    //files.cleanOutputFiles();

    // perform extract on all supported sample files
    const fileNames = files.getSampleFileNames();
    fileNames.forEach(fileName => {
        logHeader(fileName);
        const documentText = extract_text(fileName);
        const clauses = extract_clauses(fileName, documentText);
        console.log(`*** ${fileName} - completed extraction!\n`)
    })
    
    logHeader('All extractions finished!');
}

extract();