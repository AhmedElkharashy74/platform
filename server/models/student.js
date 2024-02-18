const db = require('../db');
class student{

    static login(data){
        const {user_name, password} = data;
        const sql = "select * from students where user_name = ? and password = ?";
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

    static readCorses(grade,department){
        if(department){
            const sql = "SELECT * FROM courses WHERE grade = ? AND department = ?";
            return new Promise((resolve, reject) => {
                db.query(sql,[grade,department],(e,r)=>{
                    if(!e){
                        resolve(r)
                    }else{
                        reject(e);
                    }
                })
            })
        }else{
            const sql = "SELECT * FROM courses WHERE grade = ?";
            return new Promise((resolve, reject) => {
                db.query(sql,[grade],(e,r)=>{
                    if(!e){
                        resolve(r);
                    }else{
                        reject(e);
                    }
                })
            })
        }
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

    static readTopics(id)
    {
        const sql = "SELECT * FROM topics WHERE course_id = ?";
        return new Promise((resolve, reject) => {
            db.query(sql,[id],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }
    
    
    static readLecs(grade,department)
    {
        if(department){
            const sql = "select * from lectures where grade = ? and department = ?";
            return new Promise((resolve, reject) => {
                db.query(sql, [grade,department],(e,r)=>{
                    if(!e){
                        resolve(r)
                    }else{
                        reject(e);
                    }
                })
            })
        }else{
            const sql = "select * from lectures where grade = ?";
            return new Promise((resolve, reject) => {
                db.query(sql,[grade],(e,r)=>{
                    if(!e){
                        resolve(r);
                    }else{
                        reject(e);
                    }
                })
            })
        }
    }

    static insertAssignment(data,file) {
        const { assignment_name, student_name, course_id } = data;
        const filePath = file.replace(/\\/g, '/').replace('public/uploads/', '../uploads/');
        const sql = "INSERT INTO assignments (topic_id, path, student_name, course_id) VALUES (?, ?, ?, ?)";
        return new Promise((resolve, reject) => {
            db.query(sql, [assignment_name, filePath, student_name, course_id], (error, result) => {
                if (!error) {
                    resolve(result);
                } else {
                    reject(error);
                }
            });
        });
    }

    static myReports(name){
        const sql = "select * from assignments where student_name = ?";
        return new Promise((resolve, reject) => {
            db.query(sql,[name],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }


    static attend(lecture,student){
        const sql = "insert into attendance (lecture_name,student_name)values (?,?)";
        return new Promise((resolve, reject) => {
            db.query(sql,[lecture,student],(e,r)=>{
                if(!e){
                    resolve(r)
                }else{
                    reject(e)
                }
            })
        })
    }
}
module.exports = student