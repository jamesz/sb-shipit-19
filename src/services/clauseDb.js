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

function createRecord(originalSource, clauseText) {
    return {
        id: uuid(), 
        firmId: '1bb77abc-0b57-4934-b1f5-6bb40139c4e1',
        matterCategory: 'EstatePlanning',
        clauseTitle: '',
        clauseText,
        compareText: '',
        originalSource
    };
}

async function insert(clauseRecords) {
    try
    {
        clauseRecords.forEach(async (clauseRecord) => {
            await knex('clauses').insert(clauseRecord);
            //console.log('insert called with: ', JSON.stringify(clauseRecord));
        });
    }
    catch (err) {
        console.log('insert error: ', JSON.stringify(err));
    }
}

module.exports = {
    createRecord,
    insert,
}