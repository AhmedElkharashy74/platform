const { json } = require('body-parser');
const db = require('../db');
const student = require('./student');
const qrcode = require('qrcode');

class teacher{


    static login(data){
        const {user_name, password} = data;
        const sql = "select * from teacher where user_name = ? and password = ?";
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


    static createCourse(data, name){
        const { course_name, subject, grade, department } = data;
        const sql = "INSERT INTO courses (course_name, subject, grade, department, teacher_name) VALUES (?,?,?,?,?)";
        return new Promise((resolve, reject) => {
            db.query(sql, [course_name, subject, grade, department, name], (error, result) => {
                if (!error){
                    resolve(result);
                } else {
                    reject(error);
                }
            });
        });
    }
    
    static readCourses(name){
        const sql = "select * from courses where teacher_name = ?";
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
    static insertTopic(data,file) {
        const { topic, description, course_id } = data;
        const filePath = file.replace(/\\/g, '/').replace('public/uploads/', '../uploads/');
        const sql = "INSERT INTO topics (topic, file, description, course_id) VALUES (?, ?, ?, ?)";
        return new Promise((resolve, reject) => {
            db.query(sql, [topic, filePath, description, course_id], (error, result) => {
                if (!error) {
                    resolve(result);
                } else {
                    reject(error);
                }
            });
        });
    }
    static fetchTopics(id) {
        return new Promise((resolve, reject) => {
            const sql = "SELECT * FROM topics where course_id=?";
            db.query(sql,[id],(error, results) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(results);
                }
            });
        });
    }    
    static deleteTopic(id){
        const sql = "delete from topics where id = ?";
        return new Promise((resolve, reject) => {
            db.query(sql,[id],(e,r)=>{
                if(!e){
                    resolve(r)
                }else{
                    reject(e);
                }
            })
        })
    }
    static generateQRCode(data) {
        return new Promise((resolve, reject) => {
            const stringdata = JSON.stringify(data.lecture_title)
            qrcode.toDataURL(stringdata, (err, url) => {
                if (err) {
                    reject(err);
                } else {
                    resolve(url);
                }
            });
        });
    }
    static createLec(data){
        const {lecture_title,subject,grade,department,teacher} = data;
        const sql = "insert into lectures (lecture_title, subject,grade,department,teacher) values (?,?,?,?,?)"
        return new Promise((resolve, reject) => {
            db.query(sql,[lecture_title,subject,grade,department,teacher],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e)
                }
            })
        })
    }

    static getReports(course_id){
        const sql = "select * from assignments where course_id = ?";
        return new Promise((resolve, reject) => {
            db.query(sql,[course_id],(e,r)=>{
                if(!e){
                    resolve(r);
                }else{
                    reject(e);
                }
            })
        })
    }
}




module.exports = teacher;