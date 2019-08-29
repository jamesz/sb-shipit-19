function log(message) {
    console.log(`*** ${message} .............`)
}

function logHeader(message) {
    console.log('');
    console.log('');
    console.log(`**********${'*'.repeat(message.length)}**********`);
    console.log(`          ${message.toUpperCase()}         `);
    console.log(`**********${'*'.repeat(message.length)}**********`);
}

function logDocumentText(documentText) {
    console.log(documentText);
}

module.exports = {
    log,
    logHeader,
    logDocumentText,
}