const express = require('express')
const server = express()

server.use(express.static(__dirname + "/css"));

server.get("/mainpage", (req, res) => {
    res.sendFile(__dirname+"/main.html");
});

server.get("/category", (req, res) => {
    res.sendFile(__dirname+"/category.html");
});

server.get("/dictionary", (req, res) => {
  res.sendFile(__dirname+"/list.html");
});

server.get("/word", (req, res) => {
    res.sendFile(__dirname+"/word.html");
});

server.get("/nickname", (req, res) => {
    res.sendFile(__dirname+"/nickname.html");
});

server.get("/mypage", (req, res) => {
    res.sendFile(__dirname+"/mypage.html");    
});

server.get("/setting", (req, res) => {
    res.sendFile(__dirname+"/setting.html");    
});

server.get("/bookmark", (req, res) => {
    res.sendFile(__dirname+"/bookmark.html");    
});

server.use((req, res) => {
  res.sendFile(__dirname+"/404.html");
})

server.listen(3000,(err) => {
  if(err) return console.log(err);
  console.log("The server is listening on port 3000")
});
