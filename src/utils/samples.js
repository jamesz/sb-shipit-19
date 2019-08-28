const testFolder = './samples/';
const fs = require('fs');

function getFileNames() {
  return fs.readdirSync(testFolder);
}

module.exports = {
  getFileNames
}
