var pg = require('knex')({
    client: 'pg',
    connection: {
        host : 'smb-shipit0-19.czd71xsvhgrg.ap-southeast-2.rds.amazonaws.com',
        user : 'postgres',
        password : 'T3pL4rTOF2DfWjcz',
        database : 'postgres'
    },
    searchPath: ['knex', 'public'],
});

function insert(newClauses) {
    console.log('inserting clauses to database');
}

module.exports = {
    insert
}