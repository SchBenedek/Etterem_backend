import express from "express";
import mysql from "mysql2";
import cors from "cors";
import bodyParser from "body-parser";

const app = express();
let jsonParser = bodyParser.json();

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'szteszt__tterem',
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
    const temp = await db.query('SELECT nev, allergenek, kategoria, kepek, ar FROM etelek')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows);
});

app.get('/italok', async (req,res)=>{
    const temp = await db.query('SELECT nev, allergenek, kategoria, ar FROM italok')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows);
});

app.listen(3000);