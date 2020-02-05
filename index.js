const express = require('express');
const {PORT, ENV} = process.env;

const app = express();

app.get('/hello', (req, res) => {
    res.json({
        text: `Hello ${ENV}`
    });
});

app.listen(PORT, () => {
    console.log(`listen on port: ${PORT}`);
});