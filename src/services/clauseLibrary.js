const { log } = require('../utils/logger');
const clauseDb = require('./clauseDb');

function dedup(clauseRecords) {
    log('deduplicate clauses');
    const newClauseRecords = [...clauseRecords]; // map them the same for now 
    return newClauseRecords; 
}

function add(clauses) {
    // generate clause records with uuid
    const clauseRecords = clauses.map(clause => clauseDb.createRecord(clause));
    
    // de-duplicate clauses against database
    const newClauseRecords = dedup(clauseRecords);

    // save new clauses to database
    clauseDb.insert(newClauseRecords);
}

module.exports = {
    dedup,
    add
}