const db = require('../db');

class admin{


    static login(data){
        const {user_name, password} = data;
        const sql = "select * from admin where user_name = ? and password = ?";
        return new Promise((resolve, reject) => {
            db.query(sql, [user_name,password],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }

    static createSTudent(data){
        const sql = "INSERT INTO students (user_name, email, password, grade, section, department) VALUES (?,?,?,?,?)"
        return new Promise((resolve, reject) => {
            db.query(sql,[data.user_name,data.email,data.password,data.grade,data.section,data.department],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e)
                }
            })
        })
    }
    static readStudents(){
        const sql = "select * from students";
        return new Promise((resolve, reject) => {
            db.query(sql,[],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }
    static readTeachers(){
        const sql = "select * from teacher";
        return new Promise((resolve, reject) => {
            db.query(sql,[],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }
    static createTeacher(data){
        const {name, password, email} = data;
        const sql = "insert into teacher(name,email,password) values (?,?,?)";
        return new Promise((resolve, reject) => {
            db.query(sql,[name,email,password],(e,r)=>{
                if (!e) {
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }

    static searchTeacher(data) {
        const search = data.search;
        const sql = "SELECT * FROM teacher WHERE name LIKE ? OR id LIKE ? OR email LIKE ?";
        return new Promise((resolve, reject) => {
            db.query(sql, [`%${search}%`, `%${search}%`, `%${search}%`], (err, result) => {
                if (!err) {
                    resolve(result);
                } else {
                    reject(err);
                }
            });
        });
    }
    
    static readGrades() {
        const sql = 'select * from grades';
        return new Promise((resolve, reject) => {
            db.query(sql,[],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e)
                }
            })
        })
    }

    static readSections(grade){
        const sql = 'select * from sections where grade = ?'
        return new Promise((resolve, reject) => {
            db.query(sql,[grade],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e)
                }
            })
        })
    }
    static addSection(data){
        const { section, grade } = data;
        const sql = 'INSERT INTO sections (section, grade) VALUES (?, ?)';
        return new Promise((resolve, reject) => {
            db.query(sql, [section, grade], (error, result) => {
                if(!error){
                    resolve(result);
                } else {
                    reject(error);
                }
            });
        });
    }
    static readStudentsBySection(grade,section){
        const sql = "select * from students where section = ? and grade = ?";
        return new Promise((resolve, reject) => {
            db.query(sql,[section,grade],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }
}

module.exports = admin