const {log} = require("../utils/logger");
const language = require("@google-cloud/language");

const analyzeSyntax = async (content) => {
    const client = new language.LanguageServiceClient();
    const document = {
        content,
        type: "PLAIN_TEXT"
    };
    const [analysis] = await client.analyzeSyntax({document});

};

module.exports = {
    analyzeSyntax
};