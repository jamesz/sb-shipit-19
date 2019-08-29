const {log, logHeader} = require('./utils/logger');
const files = require('./utils/files');

function extract_text(fileName) {
    logHeader(fileName);
    const documentText = '......';
    return documentText;
}

function extract_clauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with regex`)
}

function extract() {
    log('Starting extraction');

    // clean up existing output files
    files.cleanOutputFiles();

    // perform extract on all supported sample files
    const fileNames = files.getSampleFileNames();
    fileNames.forEach(fileName => {
        const documentText = extract_text(fileName);
        const clauses = extract_clauses(fileName, documentText);
    })
    
    console.log('Extraction completed!');
}

extract();