const router = require('express').Router(); // Add parentheses to create a new router instance
const bodyParser = require('body-parser');
const session = require('express-session');
const upload = require('./upload');
const adminController = require('./controllers/adminController');
const studentController = require('./controllers/studentContrtroller');
const teacherController = require('./controllers/teacherController');
const qrcode = require('qrcode');
router.use(bodyParser.urlencoded({ extended: false }));
router.use(bodyParser.json())
router.use(session({
    secret: 'meow meow nigga',
    resave: false,
    saveUninitialized: true
}));



function requireLogin(req, res, next) {
    try {
        if (!req.session.userId || !req.session.user_name) {
            return res.redirect('/');
        }
        // User is logged in, proceed to the next middleware
        next();
    } catch (error) {
        // Handle any potential errors
        console.error('Error in requireLogin middleware:', error);
        res.status(500).send('Internal Server Error');
    }
}



// router.get('/', (req, res) => {
//     res.render('index');
// });

//admin routes
router.get('/login', (req,res)=>{
    res.send("this is login")
})
router.get('/test', requireLogin, (req,res)=>{
    res.send('failed')
})
router.get('/admin-login', (req,res)=>{
    res.render('login', {action:'/admin-login'})
})
router.get('/teacher-login', (req,res)=>{
    res.render('login', {action:'/teacher-login'})
})
router.get('/student-login', (req,res)=>{
    res.render('login', {action:'/student-login'})
})
router.post('/admin-login', adminController.login)
router.get('/logout',requireLogin, adminController.logout)
router.get('/Admin/HomePage',requireLogin,adminController.homePage)
router.post('/Admin/create-teacher/', requireLogin, adminController.createTeacher);
router.post('/Admin/create-student/', requireLogin, adminController.createStudent);
router.get('/Admin/teachers/', requireLogin, adminController.readTeachers);
router.get('/Admin/add-teacher/',requireLogin,(req,res)=>{
    res.render('teacher-add',{title:'Add-Teacher',user_name:req.session.user_name,space:''})
});
router.post('/Admin/add-teacher/', requireLogin, adminController.createTeacher)
router.get('/Admin/Students/',requireLogin,adminController.readStudents)
router.get('/Admin/Add-student',requireLogin,(req,res)=>{
    res.render('add-student',{space:'',title:"student-add",user_name:req.session.user_name})
});
router.post('/Admin/Add-student', requireLogin, adminController.createSTudent)
router.get('/Admin/grades', requireLogin, adminController.getGrades);
router.get('/Admin/grades/:grade/',requireLogin,adminController.readSections);
router.post('/Admin/Add-section', requireLogin, adminController.addSection)
router.get('/Admin/grades/:grade/:section',requireLogin,adminController.readStudentsBySection);
router.get('/Admin/grades/prep/:section');
router.get('/Admin/grades/departs/');
router.get('/Admin/logout',requireLogin, adminController.logout)




//Students routes
router.post('/student-login', studentController.login)
router.get('/student/HomePage', requireLogin, studentController.homepage);
router.get('/student/logout', studentController.logout)
router.get('/student/teachers',requireLogin, studentController.readteachers)
router.get('/student/course/:course_id',requireLogin,studentController.readTopics)
router.get('/student/lectures/',requireLogin, studentController.readLecs)
router.get('/student/:topic_id/:course_id',requireLogin,(req,res)=>{
    res.render('student-upload',{
        title:'Upload Assignment',
        space:'/..',
        user_name:req.session.user_name,
        topic_id:req.params.topic_id,
        course_id:req.params.course_id
    });
})
router.post('/student/upload',requireLogin,upload.single('file'),studentController.uploadAssignment);
router.get('/student/myReports',requireLogin,studentController.myReports);
router.get('/student/scanQr',requireLogin,(req,res)=>{
    res.render('scan-qr',{
        space:'',
        title:'QR Scan',
        user_name:req.session.user_name
    })
});
router.post('/student/attend',requireLogin,studentController.attend);



//teacher routes
router.post('/teacher-login', teacherController.login);
router.get('/teacher/HomePage' ,requireLogin, teacherController.homePage)
router.get('/Teacher/Courses/:id', requireLogin, teacherController.readCourses)
router.get('/Teacher/add-course',requireLogin,(req,res)=>{
    res.render('teacher-addCourse',{title:'add course', space:'', user_name:req.session.user_name,id:req.session.id})
})
router.post('/Teacher/add-course',requireLogin,teacherController.addCourse)

router.get('/teacher/course/:courseId', requireLogin,teacherController.topics);

router.post('/Teacher/upload/',requireLogin,upload.single('file'),teacherController.uploadTopic)
router.get('/Teacher/delete/:id',requireLogin,teacherController.deleteTopic)
router.get('/Teacher/grades', requireLogin, adminController.getGrades);


router.get('/Teacher/QrForm/', requireLogin, (req,res)=>{
    res.render('qrform',{space:'',title:'Qr gen',user_name:req.session.user_name,id:req.session.userId})
});
router.post('/Teacher/generateQr/',requireLogin,teacherController.generateqr);
router.get('/Teacher/reports/:course_id',requireLogin,teacherController.getReports);
router.get('/Teacher/reports',requireLogin,teacherController.readrepsByCourse)

module.exports = router;
