const {log, logHeader, logDocumentText} = require('./utils/logger');
const files = require('./utils/files');
const clauseLibrary = require('./services/clauseLibrary');


function cleanLine(lineText)
{
    return lineText;    
}

function extractClauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with rules`)


    // 1) a clause always starts with a number
    // 2) the end of the clause 
    //    2.1 is the beginning of another clause
    //    2.2 is a heading/bold text/ starting on a new line
    // Handling Anomalies 
    // a) how to ignore table of contents
    // 
    const lines = documentText.split('\n');
    const clauseLineIndexes = [];
    const clauses = []
   
    // find index of lines starting with a number
    const regexStartsWithNumber = /^\d+/;
    lines.forEach((line, index) => {
       const sanitizedLine = cleanLine(line);
       if (sanitizedLine.match(regexStartsWithNumber)) {
            clauseLineIndexes.push(index);
       };
    });
    // clauseLineIndexes.forEach(lineIndex => console.log(lines[lineIndex]));

    // extract all clauses
    clauseLineIndexes.forEach((clauseLineIndex, i) => {
        // 1) ignore all one line clauses as they are too trivial 
        // and the customer can write it themselves, these are also easy 
        // to create if we ever add the ability to add custom clauses
        // 2) extract everything between two potential clause
        if (clauseLineIndex === lines.length) {
            clauses.push(lines[clauseLineIndex]); // last line
        } else if (clauseLineIndex < lines.length - 1 && i < clauseLineIndexes.length - 1) {
            const linesInClause = []
            const nextClauseLineIndex = clauseLineIndexes[i+1];
            for(let current = clauseLineIndex; current < nextClauseLineIndex; current++) {
                linesInClause.push(lines[current]);
            }
            const clause = linesInClause.join('\n');
            clauses.push(clause);
        }
    });

    clauses.forEach(clause => console.log(clause, '\n----------\n'));
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