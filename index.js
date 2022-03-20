const express = require('express');
const app = express();

app.get('/', (req, res) =>{
    res.json({
        version: "1.0.0",
        description: "Marcos Devops",
        maintainer: "marcosaureliofarias2023@gmail.com"
    });
});

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`aplicação rodando na porta: ${port}`)
})