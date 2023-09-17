require('dotenv').config();
const express = require('express')
const mongoos = require('mongoose') 
const PORT = process.env.PORT | 3001
const DB_USERNAME = process.env.DB_USERNAME
const DB_PASSWORD = process.env.DB_PASSWORD

const uri = `mongodb+srv://${DB_USERNAME}:${DB_PASSWORD}@cluster0.qryyjhs.mongodb.net/?retryWrites=true&w=majority`

mongoos.connect(uri).then(()=> {
    console.log('Connection Successful')
}).catch((e)=>{
    console.log(e)
});

const app = express()
app.listen(PORT, "0.0.0.0", ()=> {
    console.log(`[${PORT}] - Testing server...`)
    console.log('server working!')
});
