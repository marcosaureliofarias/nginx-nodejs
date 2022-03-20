
const express = require('express');
const app = express();

app.get('/', function(req, res) {
    res.json({
        version: "1.1.5",
        description: "Container Nginx e NodeJS",
        maintainer: "Marcos <marcosaureliofarias2023@gmail.com>"
    });
});

const port = process.env.PORT || 3000;

app.listen(port, function() {
    console.log(`Aplicação rodando na porta: ${port}`);
});