const blobStorage = require('../integrations/azure_blob_storage');
const search = require('../integrations/azure_search');
const { log } = require('../utils/logger');
const clauseDb = require('./clauseDb');

async function dedup(clauseRecords) {
    if (clauseRecords.length === 0) {
        console.log('skipping empty clauseRecords');
        return [];
    }
    console.log('deduplicate clauses');

    const newClauses = clauseRecords;   // map them the same for now

    return newClauses; 
}

async function loadStaging({fileName, clauses}) {
    // generate clause records with uuid
    const clauseRecords = clauses.map(clause => clauseDb.createRecord(fileName, clause));
    // de-duplicate clauses against database
    const newClauses = await dedup(clauseRecords);
    // const uploads = await Promise.all(newClauses.map(async clause => {
    //     const {id} = clause;
    //     const {clauseText} = await search.getById(id);
    //
    //
    //
    //     await blobStorage.addStagingBlob({id: clause.id, data: clause});
    //     return clause;
    // }));
    const  uploads = newClauses;
    return uploads;
}

function add(clauseRecords) {
    //const newClauseRecords = dedup(clauseRecords);

    // save new clauses to database
    const mapped = clauseRecords.map(({originalSource: _, ...rest}) => rest);
    clauseDb.insert(mapped);
}

module.exports = {
    dedup,
    add,
    loadStaging
};