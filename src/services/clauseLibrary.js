const clauseDb = require('./clauseDb');

function dedup(rawClauses) {
    console.log('deduplicate clauses');
    const newClauses = []; // map them the same for now 
    return newClauses; 
}

function add(rawClauses) {
    // de-duplicate clauses against database
    const newClauses = dedup(rawClauses);

    // save new clauses to database
    clauseDb.insert(newClauses);
}

module.exports = {
    dedup,
    add
}