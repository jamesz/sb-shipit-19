function log(message) {
    console.log(`*** ${message} .............`)
}

function logHeader(message) {
    console.log('');
    console.log('');
    console.log('*********************************');
    console.log(`       ${message.toUpperCase()}       `);
    console.log('*********************************');
}

module.exports = {
    log,
    logHeader
}