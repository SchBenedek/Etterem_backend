import express from "express";
import mysql from "mysql2";
import cors from "cors";
import bodyParser from "body-parser";
import multer from "multer";
import {unlink} from 'fs';
import 'dotenv/config'
import { cwd } from "process";

const app = express();
let jsonParser = bodyParser.json();

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'images/')
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9)
      cb(null, file.originalname)
    }
  })
const upload = multer({storage});

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

app.post('/upload', upload.single('image'),async (req,res,next)=>{
    let nev = req.body.nev;
    let result = await db.query(`SELECT nev from etelek WHERE nev="${nev}";`);
    let result2 = await db.query(`SELECT nev from italok WHERE nev="${nev}";`);
    if(result[0].length == 0 && result2[0].length == 0){
        const temp = await db.query(`
                INSERT INTO italok (nev,allergenek,kategoria,ar,kepek)
                VALUES ("${req.body.nev}","${req.body.allergenek}","${req.body.kategoria}","${req.body.ar}","${req.file.filename}");`)
        res.sendStatus(200);
    }
    else{
        res.status(400).send("Már van ilyen")
    }
})

app.delete("/etel:nev",async(req,res)=>{
    let nev = req.params.nev;
    await db.query('DELETE from etelek WHERE nev="?";',[nev]);
    res.sendStatus(200);
})
app.delete("/ital:nev",async(req,res)=>{
    let nev = req.params.nev.substring(1);
    let result = await db.query(`SELECT kepek from italok WHERE nev="${nev}";`);
    let rows = result[0];
    if (rows.length == 0){
        res.status(400).send("Nincs ilyen az adatbazisban");
    }
    else{
        let filename = rows[0].kepek;
        unlink(`images/${filename}`, (err) =>{
            console.log("[debug] torles sikeres err: "+err);
        });
        await db.query(`DELETE from italok WHERE nev="${nev}";`);
        res.sendStatus(200);
    }
})


app.listen(3000);