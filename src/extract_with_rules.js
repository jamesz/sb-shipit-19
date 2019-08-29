const {log, logHeader, logDocumentText} = require('./utils/logger');
const files = require('./utils/files');
const clauseLibrary = require('./services/clauseLibrary');


function cleanLine(lineText)
{
    return lineText;    
}


function extractClauses(fileName, documentText) {
    log(`${fileName} - extracting clauses with rules`)

    // Clause Identification Rules
    // 1) a clause always starts with a number at the beginning of the line
    // 2) everything between the start of one clause line and another clause
    // line will be considered a clause we want to extract

    // Handling Anomalies 
    // a) how to ignore table of contents
    //    Solution: we'll ignore all one liner clauses except the last line 
    //              as these are trivial to recreate for the customer
    // b) how to handle text that don't belong to an actual clause
    //    Solution: we'll ignore these and let the customer decide whether
    //              to cut them out from an inserted clause

    // split text file into lines
    const lines = documentText.split('\n');
    
    const clauses = []
   
    // find index of lines starting with a number, separated by dot
    const clauseTitleIndexes = findClauseTitles(lines);

    // extract each identified clauses
    clauseTitleIndexes.forEach((clauseTitleIndex, i) => {
        // 1) ignore all one line clauses as they are too trivial 
        // and the customer can write it themselves, these are also easy 
        // to create if we ever add the ability to add custom clauses
        // 2) extract everything between two potential clause
        if (clauseTitleIndex === lines.length - 1) { // clause is last line
            clauses.push(lines[clauseTitleIndex]); 
        } else if (clauseTitleIndex < lines.length - 2) { // clause line is before or equal second last line
            if (i === clauseTitleIndexes.length - 1) { 
                // is last clause - extract to end of file
                extractClause(clauseTitleIndex, lines.length - 1, lines, clauses);
            } else if (i < clauseTitleIndexes.length - 1) { 
                // is not last clause
                const nextClauseLineIndex = clauseTitleIndexes[i+1];
                extractClause(clauseTitleIndex, nextClauseLineIndex - 1, lines, clauses);
            }
        } 
    });

    clauses.forEach(clause => console.log(clause, '\n-------------------------------------------------------------------------------------------------------------------------\n'));
    return clauses;
}

function findClauseTitles(lines) {
    const clauseTitleIndexes = [];
    const regexClauseTitle = /^[\d]+.[\w\s]+/;
    lines.forEach((line, index) => {
        const sanitizedLine = cleanLine(line);
        if (sanitizedLine.match(regexClauseTitle)) {
            clauseTitleIndexes.push(index);
        }
        ;
    });
    return clauseTitleIndexes;
}

function extractClause(startLineIndex, endLineIndex, lines, clauses) {
    if (startLineIndex < endLineIndex) {
        // i.e. not a one liner clause
        const linesInClause = [];
        for (let current = startLineIndex; current <= endLineIndex; current++) {
            linesInClause.push(lines[current]);
        }
        const clause = linesInClause.join('\n');
        clauses.push(clause);
    }
}

function extract() {
    logHeader('Starting extraction with rule-based engine');

    const fileNames = files.getSampleFileNames();
    // const fileNames = ['sample-one-liners.docx'];
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