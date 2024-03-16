import express from "express";
import mysql from "mysql2";
import cors from "cors";
import bodyParser from "body-parser";
import 'dotenv/config'

const app = express();
let jsonParser = bodyParser.json();

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: process.env.password,
    database: 'szteszt_étterem',
    port: process.env.port
}).promise();

app.use(cors());

app.get('/', (req,res)=>{
    res.send("ok");
});

app.get('/nyitvatartas', async (req,res)=>{
    const temp = await db.query('SELECT nap, kezdo_idopont, veg_idopont, zarva FROM nyitvatartas')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows);
});

app.get('/unnepnapok', async (req,res)=>{
    const temp = await db.query('SELECT datum, kezdo_idopont, veg_idopont, zarva FROM unnepnapok')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows);
});

app.get('/etelek', async (req,res)=>{
    const temp = await db.query('SELECT nev, allergenek, kategoria, ar, kepek FROM etelek')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows);
});

app.get('/italok', async (req,res)=>{
    const temp = await db.query('SELECT nev, allergenek, kategoria, kepek, ar FROM italok')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows);
});


app.listen(3000);