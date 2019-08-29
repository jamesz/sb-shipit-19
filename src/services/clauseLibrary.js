const clauseDb = require('./clauseDb');

function dedup(rawClauses) {
    console.log('deduplicate clauses');
    console.log('rawClauses', JSON.stringify(rawClauses));
    const newClauses = []; // map them the same for now 
    return newClauses; 
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