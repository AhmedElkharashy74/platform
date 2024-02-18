const mysql = require('mysql')
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'college_project'
})


try{
    db.connect();
    console.log("db connected successfully");
}catch(e){
    console.error(e);
}
module.exports = db