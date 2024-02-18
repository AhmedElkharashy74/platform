const student = require('../models/student');

class studentController{

    static async login(req, res) {
        try {
            const user = await student.login(req.body);
            if (user.length > 0) {
                req.session.userId = user[0].id;
                req.session.grade = user[0].grade;
                if(user[0].department){
                    req.session.department = user[0].department;
                }
                req.session.user_name = user[0].user_name; // Store user name in session
                res.redirect('/student/HomePage');
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
                res.redirect('/student-login');
            }
        });
    }

    static async homepage(req,res){
        const courses = await student.readCorses(req.session.grade,req.session.department)
        console.log(req.session.grade,req.session.department)
        res.render('student-homepage',
                                    {space:'',
                                    title:'Home Page',
                                    user_name:req.session.user_name,
                                    courses}
                                    )
    }

    static async readteachers(req,res){
        const teachers = await student.readTeachers();
        res.render('student-readteachers',{space:'',teachers,user_name:req.session.user_name,title:"teachers"});
    }


    static async readTopics(req,res){
        const topics = await student.readTopics(req.params.course_id);
        res.render('student-topics',{
            space:'/..',
            title:'Topics',
            user_name:req.session.user_name,
            topics 
        })
    }

    static async readLecs(req,res){
        const lectures = await student.readLecs(req.session.grade,req.session.department);
        res.render('student-lectures',{
            space:'',
            title:'lectures',
            user_name:req.session.user_name,
            lectures    
        })
    }

    static async uploadAssignment(req,res){
        await student.insertAssignment(req.body,req.file.path);
        res.redirect(req.get('Referer'));
    }

    static async myReports(req,res){
        const reports = await student.myReports(req.session.user_name);
        res.render('myReports',{
            space:'',
            title:'my reports',
            user_name:req.session.user_name,
            reports
    })
    }

    static async attend(req,res){
        await student.attend(req.body.lecture,req.body.name);
        res.redirect(req.get('Referer'))
    }
}

module.exports = studentController