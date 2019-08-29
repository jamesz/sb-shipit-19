const {uuid} = require('../utils/uuid');
const knex = require('knex')({
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
    console.log('query string:', 
        knex('table').insert({
            id: uuid(), 
            firmId: '1bb77abc-0b57-4934-b1f5-6bb40139c4e1',
            matterCategory: 'EstatePlanning',
            clauseTitle: 'Test title',
            clauseText: 'Test Clause Text',
        }).returning('*').toString()
    );
    console.log('inserting clauses to database');
}

function createRecord(clauseText) {
    return {
        id: uuid(), 
        firmId: '1bb77abc-0b57-4934-b1f5-6bb40139c4e1',
        matterCategory: 'EstatePlanning',
        clauseTitle: '',
        clauseText,
        compareText: ''
    };
}

module.exports = {
    insert,
    createRecord
}