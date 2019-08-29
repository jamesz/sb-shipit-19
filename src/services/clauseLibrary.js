const blobStorage = require('../integrations/azure_blob_storage');
const search = require('../integrations/azure_search');
const { log } = require('../utils/logger');
const {sleep} = require('../utils/promise_utils');
const clauseDb = require('./clauseDb');

async function dedup(clauseRecords) {
    if (clauseRecords.length === 0) {
        console.log('skipping empty clauseRecords');
        return [];
    }
    log('deduplicate clauses');
    const scoringResults = await Promise.all(clauseRecords.map(async (clause, index) => {
        const {id, clauseText, firmId, originalSource} = clause;
        await sleep(500 * index);

        let searchResult = null;
        try {
             searchResult = await search.search(clauseText, firmId);
        } catch (err) {
            if (err.response.status === 503) {
                await sleep(1000 * index);
                searchResult = await search.search(clauseText, firmId);
            }
            throw err;
        }
        const score = Math.max(...searchResult.value.map(res => res["@search.score"]));

        log(`${originalSource}: ${id} - score: ${score}`);
        return {
            id,
            score,
            clause: clause
        };
    }));

    const newClauses = scoringResults.filter(({score}) => score < 0.75).map(({clause}) => clause);
    return newClauses;
}

async function loadStaging({fileName, clauses}) {
    // generate clause records with uuid
    const clauseRecords = clauses.map(clause => clauseDb.createRecord(fileName, clause));
    // de-duplicate clauses against database
    const newClauses = await dedup(clauseRecords);
    const uploads = await Promise.all(newClauses.map(async clause => {
        const {id} = clause;
        await blobStorage.addStagingBlob({id: id, data: clause});

        return clause;
    }));

    return uploads;
}

function add(clauseRecords) {
    clauseDb.insert(clauseRecords);
}

module.exports = {
    add,
    loadStaging
};