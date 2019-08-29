

async function crack_document(load_type, fileName) {
    const blobInfo = await uploadBlob(load_type, fileName);
    await run_indexer(blobInfo);

    const content = await get_document(blobInfo);
    return content;
}



module.exports = {
    crack_document
};