const SAMPLES_FOLDER = './samples';
const fs = require('fs');
const path = require('path');
const SUPPORTED_EXTENSIONS = ['.pdf', '.doc', '.docx'];
const CLEANUP_EXTENSIONS = ['.txt', '.json'];

function getSampleFileNames() {
    const sampleFileNames = fs.readdirSync(SAMPLES_FOLDER).reduce((acc, fileName) => {
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
    fs.readdirSync(SAMPLES_FOLDER).forEach(fileName => {
        const currentFileExtension = path.extname(fileName).toLowerCase();
        if (CLEANUP_EXTENSIONS.includes(currentFileExtension)){
            console.log('deleting ', `${SAMPLES_FOLDER}/${fileName}`);
            fs.unlink(`${SAMPLES_FOLDER}/${fileName}`, (err) => {
                console.log(`error occured while cleaning ${fileName}`);
            });
        }
    });
}

module.exports = {
    getSampleFileNames,
    cleanOutputFiles,
    SAMPLES_FOLDER
}
