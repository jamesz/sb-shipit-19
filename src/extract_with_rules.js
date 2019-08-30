const _ = require('lodash');
const search = require('./integrations/azure_search');
const {log, logHeader, logDocumentText} = require('./utils/logger');
const {sleep} = require('./utils/promise_utils');
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
    // clause titles must
    // 1) start with a number
    // 2) followed by some text title (can further optimise regex later)
    // 3) must be sequential, ignore anything that's out of sequence
    let prevClauseNo;
    const clauseTitleIndexes = [];
    const regexClauseTitle = /^[\d]+\..[\w\s]+/;
    const regexClauseNo = /^[\d]+/;
   
    // go through each line and decide whether it's a clause title
    lines.forEach((line, index) => {
        const sanitizedLine = cleanLine(line);
        const clauseTitleMatchResult = sanitizedLine.match(regexClauseTitle); 
        if (clauseTitleMatchResult) {
            const clauseNumberMatchResult = sanitizedLine.match(regexClauseNo);
            if (clauseNumberMatchResult) {
                const currentClauseNo = _.toNumber(clauseNumberMatchResult[0]);
                if (clauseTitleIndexes.length === 0) { 
                    // always add the first clause title
                    clauseTitleIndexes.push(index);
                    prevClauseNo = currentClauseNo;
                } else if (prevClauseNo > 0 && (currentClauseNo - prevClauseNo === 1)) {
                    // add only clause numbers which follow the sequence
                    clauseTitleIndexes.push(index);
                    prevClauseNo = currentClauseNo;
                } // else skip to next time to continue looking
            }
        }
    });
    return clauseTitleIndexes;
}

function extractClause(startLineIndex, endLineIndex, lines, clauses) {
    if (startLineIndex <= endLineIndex) {
        const linesInClause = [];
        for (let current = startLineIndex; current <= endLineIndex; current++) {
            linesInClause.push(lines[current]);
        }
        const clause = linesInClause.join('\n');
        clauses.push(clause);
    }
}

async function findNewClauses(extracts) {
    return await Promise.all(extracts.map(async (extract, index) => {
        const { fileName, clauses } = extract;
        log(`${fileName} - staging ${clauses.length} clauses into the clauseLibrary`);
        await sleep(30 * 1000 * index);
        const stagingRecords = await clauseLibrary.loadStaging(extract);
        log(`${fileName} - completed staging ${stagingRecords.length} staging records into the clauseLibrary`);
        if (stagingRecords.length > 0) {
            log(`${fileName} - Running indexer`);
            await search.indexStaging();
        }
        return { fileName, clauseRecords: stagingRecords };
    }));
}

async function extract() {
    logHeader('Starting extraction with rule-based engine');
    let fileNames = [];
    switch (process.env.LOAD_TYPE.toLowerCase()) {
        case "full":
            fileNames = files.getSampleFileNames();
            break;
        default:
            fileNames = ['sample-1.doc', 'sample-2.doc'];
            break;
    }

    const extracts = [];
    fileNames.forEach(fileName => {
        logHeader(fileName);
        const documentText = files.readDocumentText(fileName);
        const clauses = extractClauses(fileName, documentText);
        const payload = {fileName, clauses};
        files.writeClausesToFile(fileName, payload);
        extracts.push(payload);
        console.log(`*** ${fileName} - completed extraction!\n`)
    });

    // dudup against existing index to find only new clauses
    log('Starting staging process into search index');
    const staging = await findNewClauses(extracts);

    // add new clauses to clause library
    await Promise.all(staging.map(async ({fileName, clauseRecords}) => {
        log(`${fileName} - adding ${clauseRecords.length} new clauses into the clauseLibrary`);
        const newClauses = await clauseLibrary.add(clauseRecords);
    }));
    
    logHeader('All extractions finished!');
}

extract();