const samplesFolder = './samples';
const fs = require('fs');
const path = require('path');
const SUPPORTED_EXTENSIONS = ['.pdf', '.doc', '.docx'];
const CLEANUP_EXTENSIONS = ['.txt', '.json'];

function getSampleFileNames() {
    const sampleFileNames = fs.readdirSync(samplesFolder).reduce((acc, fileName) => {
        const currentFileExtension = path.extname(fileName).toLowerCase();
        if (SUPPORTED_EXTENSIONS.includes(currentFileExtension)){
            acc.push(fileName);
        }
        return acc;
    }, []);
    console.log(JSON.stringify(sampleFileNames));
    return sampleFileNames;
}

function cleanOutputFiles() {
    fs.readdirSync(samplesFolder).forEach(fileName => {
        const currentFileExtension = path.extname(fileName).toLowerCase();
        if (CLEANUP_EXTENSIONS.includes(currentFileExtension)){
            console.log('deleting ', `${samplesFolder}/${fileName}`);
            fs.unlink(`${samplesFolder}/${fileName}`, (err) => {
                console.log(`error occured while cleaning ${fileName}`);
            });
        }
    });
}

module.exports = {
    getSampleFileNames,
    cleanOutputFiles
}
