const clauseDb = require('./services/clauseDb');

const testRecord = clauseDb.createRecord(`
some very long test clause text
spread over multiple
lines.
`);

clauseDb.insert([testRecord]);
