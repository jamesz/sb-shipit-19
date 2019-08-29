const {log, logHeader, logDocumentText} = require('./utils/logger');
const files = require('./utils/files');
const clauseLibrary = require('./services/clauseLibrary');


function extractClauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with rules`)

    // 1) a clause always starts with a number
    // 2) the end of the clause 
    //    2.1 is the beginning of another clause
    //    2.2 is a heading/bold text/ starting on a new line

    // Handling Anomalies 
    // a) how to ignore table of contents
    // 
}

function extract() {
    logHeader('Starting extraction with rule-based engine');

    // clean up existing output files
    //files.cleanOutputFiles();

    // perform extract on all supported sample files
    const fileNames = files.getSampleFileNames();
    fileNames.forEach(fileName => {
        logHeader(fileName);
        const documentText = files.readDocumentText(fileName);
        const clauses = extractClauses(fileName, documentText);
        clauseLibrary.add(clauses);
        console.log(`*** ${fileName} - completed extraction!\n`)
    })
    
    logHeader('All extractions finished!');
}

extract();