
const fs = require('fs');
const path = require('path');
const SAMPLES_FOLDER = './samples';
const CLEANUP_EXTENSIONS = ['.txt', '.json'];
const SUPPORTED_EXTENSIONS = ['.pdf', '.doc', '.docx'];
const DOC_TEXT_OUTPUT_EXTENSION = '.txt';
const CLAUSE_OUTPUT_EXTENSION = '.json';

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

function getDocumentTextFileName(sampleFileName) {
    const fileNameWithNoExtension = path.basename(sampleFileName, path.extname(sampleFileName));
    return `${fileNameWithNoExtension}${DOC_TEXT_OUTPUT_EXTENSION}`;
}

function readTextFile(textFileName) {
    const textFilePath = `${SAMPLES_FOLDER}/${textFileName}`;
    if (fs.existsSync(textFilePath))
    {
        return fs.readFileSync(textFilePath, "utf8");
    }

    return '';
}

function readDocumentText(sampleFileName) {
    const documentTextFileName = getDocumentTextFileName(sampleFileName);
    const documentText = readTextFile(documentTextFileName);
    return documentText;
}

module.exports = {
    SAMPLES_FOLDER,
    DOC_TEXT_OUTPUT_EXTENSION,
    CLAUSE_OUTPUT_EXTENSION,
    cleanOutputFiles,
    getSampleFileNames,
    getDocumentTextFileName,
    readDocumentText,
}
