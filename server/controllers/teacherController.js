const teacher = require('../models/teacher');

class teacherController{
    static async login(req, res) {
        try {
            const user = await teacher.login(req.body);
            if (user.length > 0) {
                req.session.userId = user[0].id;
                req.session.user_name = user[0].user_name; // Store user name in session
                res.redirect('/teacher/HomePage');
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
                res.redirect('/teacher-login');
            }
        });
    }
    static async homePage(req,res){
        const data = await teacher.readCourses(req.session.user_name); 
        res.render('teacher-homepage',{courses:data,space:'',title:'Teacher HomePage', user_name:req.session.user_name,id:req.session.userId})
    }
    static readCourses(req,res){ 
        res.render('teacher-courses',{data:data1,space:'',title:'Teacher HomePage', user_name:req.session.user_name,id:req.session.userId})
    }

    static async addCourse(req,res){
        try{
            await teacher.createCourse(req.body,req.session.user_name);
            res.redirect(req.get('Referer'));
        }catch(e){
            console.error(e);
        }
    }

    static async uploadTopic(req,res){
        console.log(req.body)
        console.log(req.file.path)
        await teacher.insertTopic(req.body,req.file.path)
        res.redirect(req.get('Referer'));
    }




    static async readCourses(req,res){
        const result = await teacher.readCourses(req.session.user_name);
        if(result.length > 0){
        res.render('teacher-courses',{space:'/..', title:'My Courses',data:result,user_name:req.session.user_name,id:req.session.id})
        }else{
            res.send('55555555');
        }
    }

    static async topics(req,res){
        try {
            // Fetch topics from the database using your model or data access layer
            const c_id = req.params.courseId
            console.log(req.params.courseId)
            const topics = await teacher.fetchTopics(c_id); // Example method to fetch topics from the model
    
            // Render the 'teacher-topics' view and pass the fetched topics as data
            res.render('teacher-topics', {title:'add course',
                                        space:'/..',
                                        user_name:req.session.user_name,
                                        id:req.session.id,
                                        topics, 
                                        c_id
    });
        } catch (error) {
            // Handle errors
            console.error('Error fetching topics:', error);
            res.status(500).send('Internal Server Error');
        }
        
    }

    static async deleteTopic(req,res){
        await teacher.deleteTopic(req.params.id);
        res.redirect(req.get('Referer'));
    }

    static async generateqr(req,res){
        const qrdata = await teacher.generateQRCode(req.body);
        await teacher.createLec(req.body);
        res.render('qr',{space:'',title:'Qr gen',user_name:req.session.user_name,id:req.session.userId,qrdata})
    }

    static async getReports(req,res){
        const reports = await teacher.getReports(req.params.course_id);
        res.render('reports',{
            space:'/..',
            title:'Student Reports',
            user_name:req.session.user_name,
            reports,
            id:req.session.id
        })
    }
    static async readrepsByCourse(req,res){
        const courses = await teacher.readCourses(req.session.user_name);
        res.render('teacher-reports',{
            space:'',
            title:'courses',
            user_name:req.session.user_name,
            id:req.session.user_id,
            courses
        });
    }
}
module.exports = teacherController