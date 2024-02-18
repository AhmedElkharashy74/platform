const express = require('express');
const db = require('./server/db')
const router = require('./server/router')
const path = require('path');
const scanner = require('qr-scanner')
const QRCode = require('qrcode')
const app = express();
app.set('view engine', 'ejs')
app.set('views', path.join(__dirname, 'public/views/'));  
app.use(express.static('public'))
// app.use(express.static(path.join(__dirname, 'public')));




app.use(router);
app.listen(3000,()=>{
    console.log("app is listening on http://localhost:3000/")
})