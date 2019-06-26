const express = require('express');
const app = express();

app.listen(3000,()=>{
	console.log("Probadon listener");
});

app.get('/',(req,res)=>{
	res.send("Hey");
});