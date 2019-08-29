const {log, logHeader} = require('./utils/logger');
const files = require('./utils/files');

function extractClauses(fileName, documentText) {
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
        const documentText = files.readDocumentText(fileName);
        const clauses = extractClauses(fileName, documentText);
        console.log(`*** ${fileName} - completed extraction!\n`)
    })
    
    logHeader('All extractions finished!');
}

extract();