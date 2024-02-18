const admin = require('../models/admin');
const session = require('express-session');
const db = require('../db');
class adminController{


    static async login(req, res) {
        try {
            const user = await admin.login(req.body);
            if (user.length > 0) {
                req.session.userId = user[0].id;
                req.session.user_name = user[0].user_name; // Store user name in session
                res.redirect('/Admin/HomePage');
            } else {
                res.send('Wrong username or password');
            }
        } catch (error) {
            console.error('Error during login:', error);
            res.status(500).send('Internal Server Error');
        }
    }
    


    static logout(req,res){
        req.session.destroy(err => {
            if (err) {
                console.error(err);
            } else {
                res.redirect('/admin-login');
            }
        });
    }



    static async createTeacher(req,res){
        try{
            await admin.createTeacher(req.body);
            res.redirect(req.get('Referer'))
        }catch(e){
            console.error(e);
        }
    }

    static async createStudent(req,res){
        try{
            await admin.createSTudent(req.body);
            res.redirect(req.get('Referer'));
        }catch(e){
            console.error(e);
        }
    }




    static async readTeachers(req,res){
        try{
        const result = await admin.readTeachers();
        if (result) {
            res.render('teachers',{user_name:req.session.user_name,teachers:result,title:"Teachers",space:''})
        }
        }catch(e){
            console.error(e);
        }
    }



    static async homePage(req,res){
        try{
            const result = await admin.readTeachers();
            res.render('admin-homepage',{title:'Admin HomePage',user_name:req.session.user_name, teachers:result,space:''})
        }catch(e){
            console.error(e)
        }
    }

    static async readStudents(req,res){
        try{
            const result = await admin.readStudents();
            if (result) {
                res.render('students',{user_name:req.session.user_name,students:result,title:"Students",space:''})
            }
            }catch(e){
                console.error(e);
            }
    }

    static async getGrades(req,res){
        const grades = await admin.readGrades();
        res.render('grades',{title:'Grades', data:grades,user_name:req.session.user_name,space:''})
    }


    static async readSections(req,res){
        const sections = await admin.readSections(req.params.grade);
        res.render('sections',{title:'Sections',user_name:req.session.user_name,data:sections,space:'/..',grade:req.params.grade})
    }
    

    static async addSection(req,res){
        try{
            admin.addSection(req.body);
            res.redirect(req.get('Referer'))
        }catch(e){
            console.error(e);
        }
    }
    
    
    static async createSTudent(req,res){
        try{
            admin.createSTudent(req.body);
            res.redirect(req.get('Referer'))
        }catch(e){
            console.error(e);
        }
    }
    
    
    static async readStudentsBySection(req,res){
        const result = await admin.readStudentsBySection(req.params.grade,req.params.section);
        console.log(req.params)
        console.log(result)
        res.render('students',{students:result, space:'/../..',title:req.params.section,user_name:req.session.user_name,userId:req.session.user_id}); 
    }
}

module.exports = adminController