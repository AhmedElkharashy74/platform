-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 08:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(12) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(1, 'Admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(12) NOT NULL,
  `course_id` int(12) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `topic_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `course_id`, `student_name`, `path`, `topic_id`) VALUES
(1, 1, 'student1', '../uploads/1708117758806-WhatsApp Image 2024-02-15 at 04.33.39_b4c50687.jpg', 1),
(2, 1, 'Hedda Richard', '../uploads/1708144502992-Sheet 4.pdf', 5),
(3, 1, 'Hedda Richard', '../uploads/1708144511465-WhatsApp Image 2023-11-08 at 21.28.44_456018f3.jpg', 6),
(4, 1, 'Richard', '../uploads/1708144680093-WhatsApp Image 2023-11-08 at 21.28.44_2346d28c.jpg', 6),
(5, 1, 'Richard', '../uploads/1708144684240-Sheet 4.pdf', 6),
(6, 1, 'Richard', '../uploads/1708144688237-WhatsApp Image 2023-11-08 at 21.28.44_456018f3.jpg', 6),
(7, 1, 'Richard', '../uploads/1708144692466-WhatsApp Image 2023-11-08 at 21.28.44_2346d28c.jpg', 6),
(8, 1, 'student1', '../uploads/1708145185262-Sheet 4.pdf', 5),
(9, 1, 'student1', '../uploads/1708145189726-WhatsApp Image 2023-11-08 at 21.28.44_456018f3.jpg', 5),
(10, 1, 'student1', '../uploads/1708145193816-Ø´ÙØª 4.pdf', 5),
(11, 1, 'student1', '../uploads/1708145197229-Sheet 4.pdf', 5),
(12, 1, 'student1', '../uploads/1708145201067-WhatsApp Image 2023-11-08 at 21.28.44_ca775ad5.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(12) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `lecture_name` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_name`, `lecture_name`, `date`) VALUES
(1, 'student1', '{\"lecture_title\":\"lecture 2\",\"subject\":\"Maths\",\"grade\":\"prep\",\"department\":\"\",\"teacher\":\"teacher1\"}', '2024-02-17'),
(2, 'student1', '\"lecture 2\"', '2024-02-17'),
(3, 'student1', '\"lecture 2\"', '2024-02-17'),
(4, 'student1', '{\"lecture_title\":\"lecture 2\",\"subject\":\"Maths\",\"grade\":\"prep\",\"department\":\"\",\"teacher\":\"teacher1\"}', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(12) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `subject`, `grade`, `department`, `teacher_name`) VALUES
(1, 'course1', 'subject1', 'prep', 'electronics', 'teacher1'),
(3, 'course2', 'subject2', 'first', NULL, 'teacher1'),
(4, 'math1', 'maths', 'prep', NULL, 'teacher1'),
(5, 'physics1', 'physics', 'Choose...', NULL, 'teacher1');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `grade` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade`) VALUES
(1, 'prep'),
(4, 'first'),
(7, 'second'),
(8, 'third'),
(10, 'fourth');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(12) NOT NULL,
  `lecture_title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `lecture_title`, `subject`, `grade`, `department`, `teacher`) VALUES
(1, 'lecture 2', 'Maths', 'first', 'electronics engineering', 'teacher1'),
(5, 'lecture 2', 'Maths', 'prep', '', 'teacher1'),
(6, 'lecture 2', 'Maths', 'prep', '', 'teacher1'),
(7, 'fdsfeffefe', 'fefwq', 'prep', '', 'teacher1'),
(8, 'lecture3', 'physics', 'first', 'electronics engineering', 'teacher1');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(12) NOT NULL,
  `section` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `grade`) VALUES
(1, 'section1', 'prep'),
(2, 'section2', 'prep'),
(3, 'section3', 'prep'),
(4, 'section1', 'first'),
(5, 'section2', 'first'),
(6, 'section4', 'prep'),
(7, 'section5', 'prep'),
(8, 'section6', 'prep'),
(9, 'section7', 'prep'),
(10, 'section3', 'first'),
(11, 'section4', 'first'),
(12, 'section5', 'first'),
(13, 'section1', 'seconde'),
(14, 'section2', 'seconde'),
(15, 'section3', 'seconde'),
(16, 'section4', 'seconde'),
(17, 'section1', 'third'),
(18, 'section2', 'third'),
(19, 'section3', 'third'),
(20, 'section4', 'third'),
(21, 'section5', 'third'),
(22, 'section6', 'third'),
(24, 'section1', 'second'),
(25, 'section2', 'second'),
(26, 'section3', 'second'),
(27, 'section4', 'second'),
(28, 'section5', 'second'),
(29, 'section1', 'fourth'),
(30, 'section2', 'fourth'),
(31, 'section3', 'fourth'),
(32, 'section4', 'fourth'),
(33, 'section5', 'fourth');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `user_name` varchar(255) NOT NULL,
  `id` int(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `section` varchar(12) NOT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`user_name`, `id`, `email`, `password`, `grade`, `section`, `department`) VALUES
('Shay Miles', 206, 'in@outlook.org', 'Hedda Richard', 'second', 'section1', 'electronics engineering'),
('Amanda Larsen', 207, 'sapien@protonmail.net', 'Sade Morrison', 'third', 'section1', 'electronics engineering'),
('Caesar Lawson', 208, 'donec.vitae.erat@aol.net', 'Wynter Hodge', 'second', 'section1', 'electronics engineering'),
('Justin Macdonald', 209, 'consectetuer.ipsum@google.com', 'Ronan Watkins', 'second', 'section1', 'electronics engineering'),
('Orlando Molina', 210, 'a.purus@aol.ca', 'Kevyn Lawson', 'second', 'section1', 'electronics engineering'),
('Matthew Ratliff', 211, 'luctus@yahoo.net', 'Tanner Carr', 'first', 'section1', 'electronics engineering'),
('Axel Vaughan', 212, 'aliquam.ornare@protonmail.com', 'Aristotle Conner', 'fourth', 'section1', 'electronics engineering'),
('Brianna Bray', 213, 'ut.quam.vel@google.org', 'Dustin Logan', 'second', 'section1', 'electronics engineering'),
('Allistair Contreras', 214, 'mattis@aol.edu', 'Isaiah Hyde', 'first', 'section1', 'electronics engineering'),
('Galvin Curtis', 215, 'semper.egestas@google.couk', 'Hyacinth Jarvis', 'third', 'section1', 'electronics engineering'),
('Kim Wyatt', 216, 'ullamcorper.duis@hotmail.com', 'TaShya Hawkins', 'third', 'section1', 'electronics engineering'),
('Dane Garrison', 217, 'nulla.integer@yahoo.ca', 'Dana Mcintyre', 'fourth', 'section1', 'electronics engineering'),
('Allistair Shaffer', 218, 'id.nunc@google.org', 'Driscoll Strong', 'fourth', 'section1', 'electronics engineering'),
('Emi Townsend', 219, 'duis.ac@icloud.couk', 'Martha Valenzuela', 'second', 'section1', 'electronics engineering'),
('Brenden Holman', 220, 'dis.parturient@hotmail.net', 'Kalia Ayala', 'third', 'section1', 'electronics engineering'),
('Oren Sutton', 221, 'aliquet@protonmail.couk', 'Olympia Oneil', 'second', 'section1', 'electronics engineering'),
('Bree Strickland', 222, 'donec.fringilla.donec@icloud.com', 'Dawn Morrow', 'first', 'section1', 'electronics engineering'),
('Zephr Avery', 223, 'sociis.natoque@protonmail.org', 'Ray Santiago', 'fourth', 'section1', 'electronics engineering'),
('Reuben Logan', 224, 'mauris.eu@aol.com', 'Xenos Williams', 'second', 'section1', 'electronics engineering'),
('Demetrius Wall', 225, 'vel.faucibus@protonmail.org', 'Kylynn Lindsey', 'fourth', 'section1', 'electronics engineering'),
('Rama Whitley', 226, 'odio@icloud.com', 'Hilary Villarreal', 'first', 'section1', 'electronics engineering'),
('Aiko Mcgowan', 227, 'tellus.imperdiet.non@google.com', 'Marsden Frye', 'first', 'section1', 'electronics engineering'),
('Inez Stanton', 228, 'elit.elit@yahoo.couk', 'Brandon Pearson', 'first', 'section1', 'electronics engineering'),
('Cynthia Ayers', 229, 'magna.phasellus.dolor@aol.net', 'Cecilia Zimmerman', 'fourth', 'section1', 'electronics engineering'),
('Octavia Marsh', 230, 'et.magnis.dis@aol.com', 'Nehru Nieves', 'third', 'section1', 'electronics engineering'),
('George Sampson', 231, 'molestie.arcu.sed@yahoo.edu', 'Nyssa Gay', 'second', 'section1', 'electronics engineering'),
('Reese Benton', 232, 'luctus.lobortis@aol.com', 'Willow Fletcher', 'third', 'section1', 'electronics engineering'),
('Cailin Campos', 233, 'sed.pharetra@hotmail.edu', 'Reece Cross', 'third', 'section1', 'electronics engineering'),
('Adrian Haney', 234, 'mus@aol.org', 'Murphy Potter', 'first', 'section1', 'electronics engineering'),
('Wade Roberts', 235, 'ultrices@yahoo.net', 'Nyssa Horne', 'second', 'section1', 'electronics engineering'),
('Vernon Bruce', 236, 'aliquet.nec@google.ca', 'Anika Villarreal', 'third', 'section1', 'electronics engineering'),
('Ryder Lang', 237, 'porttitor.interdum@yahoo.ca', 'Mara Chapman', 'fourth', 'section1', 'electronics engineering'),
('Cairo Goff', 238, 'vel@google.ca', 'Allen Nieves', 'third', 'section1', 'electronics engineering'),
('Allen Klein', 239, 'vehicula.aliquet@protonmail.net', 'Kibo Copeland', 'fourth', 'section1', 'electronics engineering'),
('Harrison Rosales', 240, 'in.sodales@hotmail.edu', 'Alexis Conrad', 'fourth', 'section1', 'electronics engineering'),
('Drew Santiago', 241, 'lobortis.augue.scelerisque@aol.couk', 'Serina Rowe', 'fourth', 'section1', 'electronics engineering'),
('Abel Herrera', 242, 'dolor.nulla.semper@hotmail.edu', 'Zoe Palmer', 'third', 'section1', 'electronics engineering'),
('Jakeem Anderson', 243, 'facilisis.facilisis@outlook.com', 'Fletcher Riley', 'second', 'section1', 'electronics engineering'),
('Jemima Head', 244, 'fusce.feugiat@yahoo.edu', 'Christen Bullock', 'second', 'section1', 'electronics engineering'),
('Graham Love', 245, 'amet.nulla@protonmail.couk', 'Colt Molina', 'third', 'section1', 'electronics engineering'),
('Adrienne English', 246, 'mollis.integer.tincidunt@google.org', 'Simone Gaines', 'third', 'section1', 'electronics engineering'),
('Kieran Carter', 247, 'in.consequat.enim@google.couk', 'Xander Guerrero', 'third', 'section1', 'electronics engineering'),
('Hop Romero', 248, 'lobortis@yahoo.edu', 'Kenyon Bishop', 'first', 'section1', 'electronics engineering'),
('Kyle William', 249, 'luctus.sit.amet@hotmail.couk', 'Harper Walker', 'first', 'section1', 'electronics engineering'),
('Hyatt Moon', 250, 'erat.eget@yahoo.com', 'Alana Conway', 'second', 'section1', 'electronics engineering'),
('Kibo Downs', 251, 'auctor.nunc@google.edu', 'Halee Barron', 'fourth', 'section1', 'electronics engineering'),
('Damian Bryan', 252, 'ultrices@hotmail.ca', 'Jermaine Spears', 'first', 'section1', 'electronics engineering'),
('Wesley Riddle', 253, 'nibh.enim.gravida@protonmail.edu', 'Liberty Hunter', 'fourth', 'section1', 'electronics engineering'),
('Olivia Holder', 254, 'in.molestie@outlook.org', 'Rosalyn Mullen', 'fourth', 'section1', 'electronics engineering'),
('Karina Hewitt', 255, 'tincidunt@protonmail.couk', 'Kenneth Dillon', 'fourth', 'section1', 'electronics engineering'),
('Ferdinand Byers', 256, 'pellentesque.massa@protonmail.couk', 'Zelda Holmes', 'second', 'section1', 'electronics engineering'),
('Xenos Duncan', 257, 'ac.nulla@icloud.edu', 'Joseph Macias', 'fourth', 'section1', 'electronics engineering'),
('Hu Donovan', 258, 'vel.nisl.quisque@google.edu', 'Sarah Burns', 'second', 'section1', 'electronics engineering'),
('Brooke Benjamin', 259, 'erat.vivamus@yahoo.net', 'Dante Moore', 'fourth', 'section1', 'electronics engineering'),
('Camilla Case', 260, 'at.iaculis.quis@google.edu', 'Yoshi Schmidt', 'third', 'section1', 'electronics engineering'),
('Halee Skinner', 261, 'amet.lorem.semper@hotmail.net', 'Athena Crosby', 'third', 'section1', 'electronics engineering'),
('Buckminster Richard', 262, 'gravida@aol.net', 'Colleen Sargent', 'fourth', 'section1', 'electronics engineering'),
('Wanda Romero', 263, 'duis.gravida@outlook.com', 'Isaiah Cantrell', 'third', 'section1', 'electronics engineering'),
('Harper Rocha', 264, 'quisque.porttitor@protonmail.com', 'Rooney Harvey', 'second', 'section1', 'electronics engineering'),
('Dahlia Cleveland', 265, 'ligula@yahoo.ca', 'Amity Dawson', 'second', 'section1', 'electronics engineering'),
('Xandra Patterson', 266, 'et@icloud.ca', 'Camille Santana', 'first', 'section1', 'electronics engineering'),
('Lester Oneal', 267, 'tristique.pharetra@outlook.com', 'Amery Campbell', 'second', 'section1', 'electronics engineering'),
('Harlan Kelley', 268, 'orci.sem@google.edu', 'Chadwick Chaney', 'first', 'section1', 'electronics engineering'),
('Howard Byers', 269, 'mauris.sit.amet@google.ca', 'Jaime Macias', 'first', 'section1', 'electronics engineering'),
('Martina Robles', 270, 'convallis.est@outlook.edu', 'Kamal Bender', 'fourth', 'section1', 'electronics engineering'),
('Eleanor Hernandez', 271, 'in.scelerisque@hotmail.net', 'Xanthus Bradley', 'second', 'section1', 'electronics engineering'),
('Ezekiel Preston', 272, 'dolor.sit@google.ca', 'Ora Nash', 'second', 'section1', 'electronics engineering'),
('India Rodriquez', 273, 'vestibulum.ut@yahoo.com', 'Lynn Hamilton', 'third', 'section1', 'electronics engineering'),
('Jameson Snow', 274, 'gravida.nunc@yahoo.org', 'Justin Booker', 'first', 'section1', 'electronics engineering'),
('Solomon Tucker', 275, 'felis.nulla.tempor@hotmail.com', 'Zoe Kline', 'first', 'section1', 'electronics engineering'),
('Lev Kaufman', 276, 'facilisi.sed@google.couk', 'Adele Clemons', 'second', 'section1', 'electronics engineering'),
('Justina Black', 277, 'nec.tempus.scelerisque@aol.org', 'Kamal Buck', 'third', 'section1', 'electronics engineering'),
('Tasha Cain', 278, 'at.augue@yahoo.com', 'Wyoming Gonzalez', 'third', 'section1', 'electronics engineering'),
('Grant Hampton', 279, 'condimentum.donec.at@google.org', 'Yeo Tyler', 'fourth', 'section1', 'electronics engineering'),
('Herman Mullen', 280, 'nascetur@yahoo.org', 'Louis Garcia', 'first', 'section1', 'electronics engineering'),
('Rhonda Townsend', 281, 'curabitur.ut@hotmail.couk', 'Nita Carr', 'third', 'section1', 'electronics engineering'),
('Mariko Weiss', 282, 'quam@hotmail.ca', 'Hasad Parks', 'second', 'section1', 'electronics engineering'),
('Judah Pugh', 283, 'mauris.non.dui@icloud.net', 'Kane Fowler', 'third', 'section1', 'electronics engineering'),
('Ainsley Mcgowan', 284, 'faucibus.leo@google.org', 'Lucius Ellis', 'second', 'section1', 'electronics engineering'),
('Jonah Herman', 285, 'sit.amet.diam@google.com', 'Oleg Cote', 'third', 'section1', 'electronics engineering'),
('Liberty Hinton', 286, 'nec.mauris.blandit@protonmail.com', 'Conan Nelson', 'second', 'section1', 'electronics engineering'),
('Kareem Gallagher', 287, 'erat.etiam@outlook.net', 'Ora James', 'first', 'section1', 'electronics engineering'),
('Yolanda Hess', 288, 'enim.sit@aol.net', 'Malik O\'brien', 'first', 'section1', 'electronics engineering'),
('Lewis Levine', 289, 'egestas.nunc@hotmail.couk', 'Guy Ball', 'third', 'section1', 'electronics engineering'),
('Erich Bartlett', 290, 'nulla@hotmail.com', 'Mariam Oneil', 'fourth', 'section1', 'electronics engineering'),
('Bert Flowers', 291, 'sed@hotmail.couk', 'Dane Holden', 'third', 'section1', 'electronics engineering'),
('Gwendolyn Craft', 292, 'donec.felis.orci@aol.com', 'Courtney Calhoun', 'first', 'section1', 'electronics engineering'),
('Len Cameron', 293, 'consectetuer@icloud.org', 'Chantale Mclaughlin', 'fourth', 'section1', 'electronics engineering'),
('Sylvester Bishop', 294, 'luctus@aol.edu', 'Xanthus Wynn', 'first', 'section1', 'electronics engineering'),
('Oleg Gibbs', 295, 'donec.at.arcu@icloud.net', 'Chancellor Velazquez', 'second', 'section1', 'electronics engineering'),
('Urielle Schmidt', 296, 'lacus.quisque@outlook.ca', 'Joelle Shepherd', 'second', 'section1', 'electronics engineering'),
('Jerome Gilmore', 297, 'duis@yahoo.com', 'Alden Pollard', 'fourth', 'section1', 'electronics engineering'),
('Sylvia Sanchez', 298, 'varius.orci.in@icloud.com', 'Ryder Alford', 'fourth', 'section1', 'electronics engineering'),
('Guinevere Workman', 299, 'suspendisse.aliquet.molestie@hotmail.edu', 'Carlos Farley', 'fourth', 'section1', 'electronics engineering'),
('Colorado Howe', 300, 'dictum.cursus@aol.ca', 'Tana Bowers', 'third', 'section1', 'electronics engineering'),
('Pascale Robinson', 301, 'mollis.duis.sit@hotmail.com', 'Hammett Bird', 'fourth', 'section1', 'electronics engineering'),
('Octavia Rodriguez', 302, 'ante@hotmail.com', 'Felicia Knapp', 'first', 'section1', 'electronics engineering'),
('Alyssa Alston', 303, 'eu.accumsan@yahoo.ca', 'Maris Rosario', 'fourth', 'section1', 'electronics engineering'),
('Kelsie Guerrero', 304, 'fusce.fermentum@google.com', 'Isaac Dorsey', 'first', 'section1', 'electronics engineering'),
('Ima Gallagher', 305, 'orci.lobortis.augue@hotmail.ca', 'Mark Gay', 'fourth', 'section1', 'electronics engineering'),
('Aristotle Wood', 306, 'nec.tellus.nunc@hotmail.net', 'Declan Nelson', 'fourth', 'section2', 'elctrical engineering'),
('Hope Day', 307, 'dictum.sapien.aenean@icloud.com', 'Brynne Sheppard', 'second', 'section2', 'elctrical engineering'),
('Bree Mccarthy', 308, 'magna.suspendisse@protonmail.ca', 'Pearl Curry', 'third', 'section2', 'elctrical engineering'),
('Beau Tyler', 309, 'elit.pretium@hotmail.ca', 'Maite Woodward', 'fourth', 'section2', 'elctrical engineering'),
('Harrison Pace', 310, 'a@outlook.com', 'Shelby Rollins', 'second', 'section2', 'elctrical engineering'),
('Rudyard Pierce', 311, 'dui@outlook.org', 'Dante Cooley', 'fourth', 'section2', 'elctrical engineering'),
('Jana Whitney', 312, 'sed.consequat@icloud.ca', 'Hadassah Todd', 'second', 'section2', 'elctrical engineering'),
('Zeus Stokes', 313, 'ut.lacus@aol.edu', 'Meghan Bond', 'fourth', 'section2', 'elctrical engineering'),
('Phillip Hopper', 314, 'diam@icloud.ca', 'Cecilia Mcneil', 'fourth', 'section2', 'elctrical engineering'),
('Clare Flores', 315, 'dapibus.id@aol.couk', 'Christine Riddle', 'fourth', 'section2', 'elctrical engineering'),
('Hadley Dotson', 316, 'et.arcu.imperdiet@icloud.net', 'Phyllis Rosales', 'third', 'section2', 'elctrical engineering'),
('Marcia Combs', 317, 'magna.nec@yahoo.net', 'Tatiana Nolan', 'second', 'section2', 'elctrical engineering'),
('Neil Nunez', 318, 'penatibus.et.magnis@google.edu', 'Mason Fisher', 'fourth', 'section2', 'elctrical engineering'),
('Ezekiel Daniels', 319, 'nullam.enim.sed@icloud.ca', 'Kane Chandler', 'second', 'section2', 'elctrical engineering'),
('Brandon Wheeler', 320, 'ornare.fusce@protonmail.couk', 'Merritt Salas', 'third', 'section2', 'elctrical engineering'),
('Zenaida Blanchard', 321, 'libero.morbi@hotmail.net', 'Lacey Beard', 'first', 'section2', 'elctrical engineering'),
('Robert Stokes', 322, 'quisque.purus.sapien@yahoo.org', 'Naida Lambert', 'third', 'section2', 'elctrical engineering'),
('Teegan Mcpherson', 323, 'sed.sapien.nunc@aol.ca', 'Cecilia Best', 'first', 'section2', 'elctrical engineering'),
('Keith Reyes', 324, 'in.dolor@icloud.com', 'Uriel Carrillo', 'fourth', 'section2', 'elctrical engineering'),
('Yoko Hurley', 325, 'ullamcorper.duis@outlook.org', 'Theodore Kirby', 'second', 'section2', 'elctrical engineering'),
('Kaseem Christian', 326, 'magnis@icloud.couk', 'Alika Coleman', 'second', 'section2', 'elctrical engineering'),
('Gretchen Cochran', 327, 'ultrices.duis.volutpat@hotmail.com', 'Constance Walls', 'second', 'section2', 'elctrical engineering'),
('Edan Dennis', 328, 'ridiculus.mus@yahoo.couk', 'Emery Stephenson', 'fourth', 'section2', 'elctrical engineering'),
('Brent Calhoun', 329, 'tempor@protonmail.org', 'Fallon Ellison', 'first', 'section2', 'elctrical engineering'),
('Jakeem Rivas', 330, 'a.purus@icloud.ca', 'Palmer Kane', 'first', 'section2', 'elctrical engineering'),
('Genevieve Fowler', 331, 'integer@yahoo.org', 'Lev Webster', 'fourth', 'section2', 'elctrical engineering'),
('Kasimir Estes', 332, 'risus.donec@icloud.couk', 'Reece Salinas', 'first', 'section2', 'elctrical engineering'),
('Maile Stevens', 333, 'in@icloud.com', 'Fuller Horne', 'second', 'section2', 'elctrical engineering'),
('Tobias Mitchell', 334, 'lacus.quisque@icloud.net', 'Amery Davidson', 'second', 'section2', 'elctrical engineering'),
('Stuart Spencer', 335, 'fringilla@outlook.couk', 'Amos Estes', 'second', 'section2', 'elctrical engineering'),
('Sopoline Williamson', 336, 'mi.lorem.vehicula@protonmail.ca', 'Baxter Boyle', 'third', 'section2', 'elctrical engineering'),
('Joan Sanders', 337, 'a@aol.org', 'Guinevere Flynn', 'fourth', 'section2', 'elctrical engineering'),
('Adrian Burch', 338, 'in@yahoo.ca', 'Aphrodite Ford', 'first', 'section2', 'elctrical engineering'),
('Neve Irwin', 339, 'ut@hotmail.couk', 'Kasper Clements', 'third', 'section2', 'elctrical engineering'),
('Buckminster Garcia', 340, 'dapibus.rutrum@aol.edu', 'Sierra Blevins', 'first', 'section2', 'elctrical engineering'),
('Duncan Rosales', 341, 'nulla@aol.com', 'Raphael Noel', 'second', 'section2', 'elctrical engineering'),
('Latifah Atkins', 342, 'tempor.erat.neque@yahoo.org', 'Leah Burton', 'fourth', 'section2', 'elctrical engineering'),
('Priscilla Velez', 343, 'dui@outlook.com', 'Roary Knapp', 'fourth', 'section2', 'elctrical engineering'),
('Callie Mccormick', 344, 'metus.eu.erat@yahoo.couk', 'Honorato Howell', 'third', 'section2', 'elctrical engineering'),
('Lilah Clemons', 345, 'nibh.phasellus@protonmail.com', 'Ashely Peterson', 'fourth', 'section2', 'elctrical engineering'),
('Louis Little', 346, 'malesuada.fringilla@yahoo.org', 'Luke Morton', 'third', 'section2', 'elctrical engineering'),
('Leilani Chen', 347, 'lacus@hotmail.com', 'Elliott Marks', 'fourth', 'section2', 'elctrical engineering'),
('Ishmael Gutierrez', 348, 'tempor.erat.neque@hotmail.ca', 'Tanya Wise', 'fourth', 'section2', 'elctrical engineering'),
('William Mcfarland', 349, 'ligula@outlook.org', 'Emi Gray', 'third', 'section2', 'elctrical engineering'),
('Eve Garza', 350, 'suspendisse.commodo@yahoo.net', 'Chastity Dotson', 'fourth', 'section2', 'elctrical engineering'),
('Dean Stuart', 351, 'rutrum.magna.cras@protonmail.ca', 'Mohammad Moon', 'fourth', 'section2', 'elctrical engineering'),
('Zelda Jackson', 352, 'dui.fusce@protonmail.couk', 'Alika Strickland', 'second', 'section2', 'elctrical engineering'),
('Zia Bird', 353, 'eu.odio@outlook.com', 'Callie Casey', 'third', 'section2', 'elctrical engineering'),
('Maggie Craft', 354, 'aliquet.sem@google.ca', 'Jasper Lawson', 'first', 'section2', 'elctrical engineering'),
('Reuben Mcgee', 355, 'vestibulum.ante@hotmail.edu', 'Zephania Eaton', 'first', 'section2', 'elctrical engineering'),
('Anjolie Mcknight', 356, 'at.pretium@google.org', 'Quintessa Alvarado', 'third', 'section2', 'elctrical engineering'),
('Nerea Wilder', 357, 'pharetra@google.edu', 'Ezra Harrell', 'first', 'section2', 'elctrical engineering'),
('Timon Sloan', 358, 'felis@yahoo.com', 'Valentine Chandler', 'first', 'section2', 'elctrical engineering'),
('Iliana Turner', 359, 'eu.accumsan.sed@hotmail.edu', 'Tobias Delgado', 'third', 'section2', 'elctrical engineering'),
('Dominique Pennington', 360, 'non.cursus@yahoo.couk', 'Benedict Kirk', 'third', 'section2', 'elctrical engineering'),
('Darryl Mcdaniel', 361, 'vestibulum.ut@outlook.edu', 'Lars Mcclure', 'third', 'section2', 'elctrical engineering'),
('Whilemina Rosa', 362, 'sed.dolor@icloud.org', 'Jonas Hubbard', 'third', 'section2', 'elctrical engineering'),
('Jared Mckinney', 363, 'eu@hotmail.couk', 'Henry Castaneda', 'third', 'section2', 'elctrical engineering'),
('Carissa Calderon', 364, 'integer.vitae.nibh@aol.couk', 'Sylvester Burnett', 'fourth', 'section2', 'elctrical engineering'),
('Pearl Stuart', 365, 'a@hotmail.com', 'Elvis Lester', 'fourth', 'section2', 'elctrical engineering'),
('Joel Melton', 366, 'lacus.etiam@icloud.couk', 'Maxine Tyson', 'first', 'section2', 'elctrical engineering'),
('Timothy White', 367, 'nibh.enim@icloud.com', 'Chastity Morrow', 'fourth', 'section2', 'elctrical engineering'),
('Adrian Franks', 368, 'aliquet.vel.vulputate@outlook.com', 'Halla Duke', 'second', 'section2', 'elctrical engineering'),
('Anjolie Blackwell', 369, 'nulla.semper.tellus@google.edu', 'Hadley Pearson', 'third', 'section2', 'elctrical engineering'),
('Gavin Mays', 370, 'mi@google.couk', 'Allegra Burton', 'third', 'section2', 'elctrical engineering'),
('Zane Case', 371, 'vestibulum.ante@yahoo.couk', 'Magee Becker', 'second', 'section2', 'elctrical engineering'),
('Quinn Sullivan', 372, 'eget.laoreet.posuere@google.couk', 'Rama Sargent', 'first', 'section2', 'elctrical engineering'),
('Cole Yates', 373, 'odio.phasellus.at@aol.edu', 'Maile Snider', 'third', 'section2', 'elctrical engineering'),
('Mohammad Jacobson', 374, 'sit.amet@yahoo.couk', 'Perry Moreno', 'third', 'section2', 'elctrical engineering'),
('Zephania Moran', 375, 'maecenas.malesuada.fringilla@icloud.com', 'Inez William', 'second', 'section2', 'elctrical engineering'),
('Dara Mccoy', 376, 'suscipit.est@protonmail.net', 'Carter Burns', 'second', 'section2', 'elctrical engineering'),
('Gage Morrow', 377, 'phasellus.elit@protonmail.org', 'Aretha Ferguson', 'third', 'section2', 'elctrical engineering'),
('Edan Landry', 378, 'sem.elit@icloud.net', 'Lionel Bird', 'third', 'section2', 'elctrical engineering'),
('Alice Harvey', 379, 'varius.orci@outlook.com', 'Quintessa Mcgee', 'second', 'section2', 'elctrical engineering'),
('Linus Vaughn', 380, 'quisque.tincidunt@aol.ca', 'Ian Caldwell', 'second', 'section2', 'elctrical engineering'),
('Lucy Potter', 381, 'nisl.arcu@icloud.ca', 'Francis Salinas', 'third', 'section2', 'elctrical engineering'),
('Hamish Cain', 382, 'semper.pretium.neque@hotmail.net', 'Nicole Stark', 'third', 'section2', 'elctrical engineering'),
('Brendan Knowles', 383, 'duis.gravida.praesent@outlook.ca', 'Raya Hodges', 'third', 'section2', 'elctrical engineering'),
('Noelle Ford', 384, 'pede@icloud.com', 'Xantha Martin', 'third', 'section2', 'elctrical engineering'),
('Gannon Mcdonald', 385, 'adipiscing.elit.etiam@outlook.org', 'Sacha Martinez', 'third', 'section2', 'elctrical engineering'),
('Jamalia Lester', 386, 'vivamus.euismod.urna@yahoo.com', 'Ivor Best', 'first', 'section2', 'elctrical engineering'),
('Nissim Mcknight', 387, 'nulla.in.tincidunt@yahoo.org', 'Cullen Gay', 'third', 'section2', 'elctrical engineering'),
('Georgia Marsh', 388, 'id.ante@hotmail.couk', 'Wylie William', 'third', 'section2', 'elctrical engineering'),
('Xena Bradshaw', 389, 'facilisis@yahoo.edu', 'Urielle English', 'first', 'section2', 'elctrical engineering'),
('Desirae Blake', 390, 'magna.ut@icloud.couk', 'Ayanna Ortega', 'second', 'section2', 'elctrical engineering'),
('Liberty Wynn', 391, 'dolor@yahoo.org', 'Joan Rivas', 'third', 'section2', 'elctrical engineering'),
('Upton Carr', 392, 'sagittis@icloud.ca', 'Tatyana Farrell', 'first', 'section2', 'elctrical engineering'),
('Kuame Duncan', 393, 'magna.suspendisse@icloud.net', 'Cameron Luna', 'first', 'section2', 'elctrical engineering'),
('Hillary Mayer', 394, 'mus.aenean.eget@yahoo.ca', 'Matthew Pennington', 'first', 'section2', 'elctrical engineering'),
('Ahmed Knox', 395, 'vel.arcu@google.ca', 'Alexander Le', 'third', 'section2', 'elctrical engineering'),
('Yen Odom', 396, 'lacinia@icloud.net', 'Driscoll Craig', 'second', 'section2', 'elctrical engineering'),
('Rhona Alvarado', 397, 'lorem.lorem@protonmail.com', 'Colby Hernandez', 'first', 'section2', 'elctrical engineering'),
('Eleanor Branch', 398, 'adipiscing.fringilla@outlook.org', 'Lysandra Blevins', 'second', 'section2', 'elctrical engineering'),
('Arsenio Hess', 399, 'amet.risus@protonmail.edu', 'Justin Mays', 'first', 'section2', 'elctrical engineering'),
('Upton Ferguson', 400, 'duis.elementum.dui@google.net', 'Joel Dejesus', 'fourth', 'section2', 'elctrical engineering'),
('Alexandra Key', 401, 'in.magna@google.net', 'Dai Rivera', 'first', 'section2', 'elctrical engineering'),
('Ivana O\'donnell', 402, 'mauris.elit@protonmail.net', 'Nasim Mcdowell', 'fourth', 'section2', 'elctrical engineering'),
('Leandra Gonzales', 403, 'vulputate.eu@hotmail.edu', 'Shad Brooks', 'fourth', 'section2', 'elctrical engineering'),
('Jolie Merrill', 404, 'faucibus.morbi@google.org', 'Karyn Guzman', 'fourth', 'section2', 'elctrical engineering'),
('Aristotle Solomon', 405, 'convallis@outlook.org', 'Shellie Hawkins', 'first', 'section2', 'elctrical engineering'),
('Wynne Riddle', 406, 'nascetur@hotmail.net', 'Raphael Cain', 'third', 'section3', 'mechanical engineering'),
('Cameran Watkins', 407, 'vel.faucibus@yahoo.net', 'Zia Mcclain', 'second', 'section3', 'mechanical engineering'),
('Remedios Patel', 408, 'magnis.dis@hotmail.org', 'Sasha Roy', 'third', 'section3', 'mechanical engineering'),
('Kitra Reynolds', 409, 'et@aol.ca', 'Katell Lucas', 'fourth', 'section3', 'mechanical engineering'),
('Idona Mosley', 410, 'faucibus@aol.edu', 'Samuel Mcintosh', 'third', 'section3', 'mechanical engineering'),
('August Kerr', 411, 'aliquam.eros.turpis@icloud.ca', 'Brooke Farmer', 'first', 'section3', 'mechanical engineering'),
('Faith Jimenez', 412, 'sed@icloud.org', 'Zoe Garza', 'fourth', 'section3', 'mechanical engineering'),
('Tanner Fowler', 413, 'etiam@protonmail.edu', 'Bert Henry', 'first', 'section3', 'mechanical engineering'),
('Fatima Crawford', 414, 'dolor.quisque@protonmail.ca', 'Lisandra Suarez', 'first', 'section3', 'mechanical engineering'),
('Echo Gould', 415, 'orci@icloud.com', 'Ciaran Hood', 'second', 'section3', 'mechanical engineering'),
('Isabelle Vaughn', 416, 'aliquet.phasellus.fermentum@yahoo.couk', 'Wing Sandoval', 'fourth', 'section3', 'mechanical engineering'),
('Ross Russell', 417, 'parturient.montes@yahoo.edu', 'Erin Watkins', 'third', 'section3', 'mechanical engineering'),
('Robert Greene', 418, 'vivamus.euismod@outlook.edu', 'Lani Case', 'fourth', 'section3', 'mechanical engineering'),
('Paul Sexton', 419, 'sit.amet.risus@icloud.ca', 'Alea England', 'second', 'section3', 'mechanical engineering'),
('Hu Mccarthy', 420, 'et.tristique@icloud.couk', 'Leigh Tyler', 'first', 'section3', 'mechanical engineering'),
('Raven Park', 421, 'varius.orci@aol.net', 'Olympia Wilkerson', 'third', 'section3', 'mechanical engineering'),
('Kyra Kelley', 422, 'nec.urna@icloud.couk', 'Cameron Sullivan', 'third', 'section3', 'mechanical engineering'),
('Cathleen Parsons', 423, 'neque@icloud.org', 'Dane Webster', 'second', 'section3', 'mechanical engineering'),
('Willa Crosby', 424, 'non.leo.vivamus@aol.net', 'Lucy Osborne', 'third', 'section3', 'mechanical engineering'),
('Cooper Case', 425, 'quam.vel@google.couk', 'Malcolm Acevedo', 'fourth', 'section3', 'mechanical engineering'),
('Emily Castillo', 426, 'luctus.sit.amet@yahoo.org', 'George Ramsey', 'fourth', 'section3', 'mechanical engineering'),
('Harding Hyde', 427, 'lorem.lorem.luctus@icloud.com', 'Shelby Shaw', 'first', 'section3', 'mechanical engineering'),
('Grant Blair', 428, 'iaculis.enim.sit@hotmail.com', 'Oprah Cannon', 'second', 'section3', 'mechanical engineering'),
('Price Harrell', 429, 'nullam@icloud.com', 'Griffith Solis', 'second', 'section3', 'mechanical engineering'),
('Bevis Daniel', 430, 'dictum.augue.malesuada@protonmail.couk', 'Hannah Hinton', 'third', 'section3', 'mechanical engineering'),
('Julie Wheeler', 431, 'urna.nullam@aol.ca', 'Jenette Navarro', 'first', 'section3', 'mechanical engineering'),
('Baker Robertson', 432, 'dui.fusce@icloud.couk', 'Blossom Boone', 'fourth', 'section3', 'mechanical engineering'),
('Silas Huber', 433, 'enim.suspendisse@outlook.net', 'Irene Dunn', 'third', 'section3', 'mechanical engineering'),
('Lysandra Stafford', 434, 'est.mauris.rhoncus@yahoo.net', 'Angela Diaz', 'second', 'section3', 'mechanical engineering'),
('Zahir Griffith', 435, 'id.nunc@google.couk', 'Martha Lott', 'second', 'section3', 'mechanical engineering'),
('Alexandra Payne', 436, 'tellus.faucibus@outlook.net', 'Honorato Clemons', 'third', 'section3', 'mechanical engineering'),
('Ishmael Rivas', 437, 'neque.vitae@icloud.org', 'Chava Wade', 'fourth', 'section3', 'mechanical engineering'),
('Xyla Case', 438, 'augue.eu@hotmail.net', 'Barbara Hunter', 'first', 'section3', 'mechanical engineering'),
('Hayes Avery', 439, 'vulputate.lacus.cras@icloud.com', 'Brynne Clements', 'third', 'section3', 'mechanical engineering'),
('Lane Acosta', 440, 'tellus.eu@aol.couk', 'Griffin Nunez', 'third', 'section3', 'mechanical engineering'),
('Renee Barnett', 441, 'ipsum@google.couk', 'Kimberley Vinson', 'first', 'section3', 'mechanical engineering'),
('Sonya Frazier', 442, 'adipiscing.lobortis.risus@outlook.edu', 'Bree Mckay', 'first', 'section3', 'mechanical engineering'),
('Jamal Rice', 443, 'odio.nam.interdum@yahoo.couk', 'Xandra Tillman', 'second', 'section3', 'mechanical engineering'),
('Desirae Downs', 444, 'interdum.curabitur.dictum@protonmail.edu', 'Acton Brady', 'fourth', 'section3', 'mechanical engineering'),
('George Rios', 445, 'natoque.penatibus@protonmail.edu', 'Adena Farrell', 'second', 'section3', 'mechanical engineering'),
('Bert Bailey', 446, 'aliquet@icloud.org', 'Maggy Hinton', 'fourth', 'section3', 'mechanical engineering'),
('Savannah Oneal', 447, 'nibh.lacinia@aol.edu', 'Jason Freeman', 'third', 'section3', 'mechanical engineering'),
('Vera Sloan', 448, 'leo.in@yahoo.edu', 'Iola Rice', 'second', 'section3', 'mechanical engineering'),
('Ciaran Sanders', 449, 'mi.eleifend.egestas@outlook.org', 'Robin Kelly', 'third', 'section3', 'mechanical engineering'),
('Sybill Dejesus', 450, 'quam.quis@aol.org', 'Flavia Ochoa', 'third', 'section3', 'mechanical engineering'),
('Azalia Stone', 451, 'urna.nullam@outlook.com', 'Cyrus Schneider', 'second', 'section3', 'mechanical engineering'),
('Isaac Shelton', 452, 'semper.auctor@icloud.edu', 'Jonas Matthews', 'second', 'section3', 'mechanical engineering'),
('Jamalia Whitfield', 453, 'risus.varius@google.ca', 'Bianca Patel', 'third', 'section3', 'mechanical engineering'),
('Damon Savage', 454, 'integer.sem@yahoo.org', 'Kelsie Sargent', 'third', 'section3', 'mechanical engineering'),
('Jordan Harris', 455, 'ut.ipsum@google.couk', 'Aileen Dunn', 'second', 'section3', 'mechanical engineering'),
('Cruz Reilly', 456, 'leo.morbi@protonmail.org', 'Lesley Solomon', 'second', 'section3', 'mechanical engineering'),
('Marsden Bradshaw', 457, 'tortor@yahoo.com', 'Acton Phelps', 'first', 'section3', 'mechanical engineering'),
('Derek Morris', 458, 'magna.a@icloud.edu', 'Maisie Gomez', 'third', 'section3', 'mechanical engineering'),
('Ruby Mays', 459, 'massa@outlook.net', 'Odysseus Avila', 'first', 'section3', 'mechanical engineering'),
('Emery Barnett', 460, 'arcu@outlook.ca', 'Lane Beard', 'third', 'section3', 'mechanical engineering'),
('Amal Spencer', 461, 'elementum.purus@google.org', 'Leila Alexander', 'second', 'section3', 'mechanical engineering'),
('Upton Fowler', 462, 'dapibus@aol.couk', 'Edan Long', 'second', 'section3', 'mechanical engineering'),
('Benjamin Jefferson', 463, 'duis.dignissim@aol.couk', 'Nola Long', 'first', 'section3', 'mechanical engineering'),
('Illiana Parker', 464, 'tempus.mauris.erat@yahoo.edu', 'Donovan Ramsey', 'fourth', 'section3', 'mechanical engineering'),
('Inez Baldwin', 465, 'dictum.ultricies@aol.net', 'Gannon Nunez', 'second', 'section3', 'mechanical engineering'),
('Bruce Tate', 466, 'varius@google.net', 'Seth Gentry', 'first', 'section3', 'mechanical engineering'),
('Quamar Bullock', 467, 'pellentesque.tincidunt.tempus@aol.net', 'Aileen Stephenson', 'first', 'section3', 'mechanical engineering'),
('Samson Stevens', 468, 'aliquam.ornare@yahoo.net', 'Lars Solis', 'first', 'section3', 'mechanical engineering'),
('Angela Blake', 469, 'aliquam.iaculis.lacus@icloud.couk', 'Connor Walls', 'third', 'section3', 'mechanical engineering'),
('Rigel Bowen', 470, 'duis@icloud.couk', 'Tyler Park', 'second', 'section3', 'mechanical engineering'),
('Simon Mcclure', 471, 'vitae@outlook.couk', 'Mollie Shepard', 'first', 'section3', 'mechanical engineering'),
('Lenore Mcknight', 472, 'lacinia.orci@yahoo.com', 'Harding Kline', 'fourth', 'section3', 'mechanical engineering'),
('Linus Lee', 473, 'sem.elit@yahoo.org', 'Xavier Palmer', 'fourth', 'section3', 'mechanical engineering'),
('Harper Joyce', 474, 'mollis.lectus@protonmail.net', 'Jayme Wade', 'second', 'section3', 'mechanical engineering'),
('Carla Arnold', 475, 'id.blandit@outlook.ca', 'Sierra Martinez', 'third', 'section3', 'mechanical engineering'),
('Ignacia Gould', 476, 'magna.nam@protonmail.com', 'Leslie Mcguire', 'fourth', 'section3', 'mechanical engineering'),
('Moana Chandler', 477, 'suspendisse.sed.dolor@hotmail.ca', 'Iola Jackson', 'third', 'section3', 'mechanical engineering'),
('Forrest Cantu', 478, 'mollis@yahoo.couk', 'Hasad Carpenter', 'first', 'section3', 'mechanical engineering'),
('Hall Roy', 479, 'pharetra@yahoo.org', 'Yoko Ware', 'second', 'section3', 'mechanical engineering'),
('Sopoline Colon', 480, 'sodales.at@outlook.net', 'Dolan Clark', 'fourth', 'section3', 'mechanical engineering'),
('Davis Mercer', 481, 'arcu@outlook.couk', 'Veda Ortiz', 'fourth', 'section3', 'mechanical engineering'),
('Mark Drake', 482, 'nibh.lacinia@aol.net', 'Vivien Mcdaniel', 'first', 'section3', 'mechanical engineering'),
('Molly Garrison', 483, 'tincidunt.aliquam@aol.org', 'Chester Aguirre', 'first', 'section3', 'mechanical engineering'),
('Desiree Ray', 484, 'dignissim.tempor@yahoo.couk', 'Melodie Kirkland', 'second', 'section3', 'mechanical engineering'),
('Xenos Stanley', 485, 'pulvinar@yahoo.net', 'Eve Acevedo', 'first', 'section3', 'mechanical engineering'),
('Odysseus Riddle', 486, 'lacus.nulla.tincidunt@hotmail.couk', 'Martha Brady', 'third', 'section3', 'mechanical engineering'),
('Florence Marks', 487, 'orci@outlook.ca', 'Moana Arnold', 'fourth', 'section3', 'mechanical engineering'),
('Nolan Yang', 488, 'elementum.at.egestas@aol.edu', 'Xaviera Barry', 'fourth', 'section3', 'mechanical engineering'),
('Joseph Chambers', 489, 'suscipit@hotmail.couk', 'Reese Ellison', 'first', 'section3', 'mechanical engineering'),
('Isadora Moon', 490, 'risus.odio@aol.couk', 'Tad Daniels', 'third', 'section3', 'mechanical engineering'),
('Lareina Stark', 491, 'malesuada.malesuada@google.com', 'Vladimir Rice', 'first', 'section3', 'mechanical engineering'),
('Adria Mcneil', 492, 'gravida.aliquam@outlook.couk', 'Adrian Joyner', 'fourth', 'section3', 'mechanical engineering'),
('Adam Mccarty', 493, 'orci.phasellus.dapibus@aol.net', 'Ciara Chang', 'third', 'section3', 'mechanical engineering'),
('Yvette Trevino', 494, 'lorem.donec@yahoo.org', 'Ray Gibson', 'fourth', 'section3', 'mechanical engineering'),
('Reese Parker', 495, 'ut.nec.urna@google.ca', 'Rajah Booker', 'fourth', 'section3', 'mechanical engineering'),
('Isabelle Rocha', 496, 'lectus.cum.sociis@hotmail.edu', 'Jennifer Bright', 'second', 'section3', 'mechanical engineering'),
('Ruby Cummings', 497, 'proin.dolor.nulla@icloud.com', 'Savannah Leonard', 'second', 'section3', 'mechanical engineering'),
('Wing Barrett', 498, 'non@protonmail.com', 'Madaline Roy', 'second', 'section3', 'mechanical engineering'),
('Vernon Silva', 499, 'id.nunc@yahoo.ca', 'Hector Estrada', 'first', 'section3', 'mechanical engineering'),
('Zena Sullivan', 500, 'nec@yahoo.net', 'Chaim Tate', 'fourth', 'section3', 'mechanical engineering'),
('Ivory Justice', 501, 'et.ipsum@hotmail.ca', 'Carson Nunez', 'fourth', 'section3', 'mechanical engineering'),
('Maile Short', 502, 'adipiscing.lacus.ut@yahoo.net', 'Price Sykes', 'second', 'section3', 'mechanical engineering'),
('Clarke Melendez', 503, 'non@aol.net', 'Brooke Cantu', 'second', 'section3', 'mechanical engineering'),
('Ria Lyons', 504, 'duis@yahoo.edu', 'Kirby Fuller', 'first', 'section3', 'mechanical engineering'),
('Coby Stone', 505, 'duis.a@aol.com', 'Lisandra Woodward', 'first', 'section3', 'mechanical engineering'),
('Lawrence Lynch', 506, 'curae.phasellus@google.net', 'Harding James', 'second', 'section4', 'archtecture engineering'),
('Zoe Cook', 507, 'maecenas.iaculis@hotmail.net', 'Kiayada Grant', 'first', 'section4', 'archtecture engineering'),
('Aileen Espinoza', 508, 'mattis.cras@hotmail.net', 'Denise Ball', 'second', 'section4', 'archtecture engineering'),
('Kirestin Ewing', 509, 'magna.phasellus@outlook.org', 'Kennedy Best', 'second', 'section4', 'archtecture engineering'),
('Christian Sargent', 510, 'quis@protonmail.couk', 'Kamal Holmes', 'second', 'section4', 'archtecture engineering'),
('Lunea Walton', 511, 'donec.dignissim@outlook.ca', 'Samuel Macias', 'first', 'section4', 'archtecture engineering'),
('Moana Hunt', 512, 'vitae@icloud.org', 'Florence Rich', 'first', 'section4', 'archtecture engineering'),
('Lewis Stevens', 513, 'amet.risus@outlook.couk', 'Lamar Benjamin', 'fourth', 'section4', 'archtecture engineering'),
('Lisandra Dawson', 514, 'non.massa.non@outlook.ca', 'Jack Stanton', 'second', 'section4', 'archtecture engineering'),
('Paul Shaffer', 515, 'non.nisi.aenean@google.net', 'Oleg Carey', 'third', 'section4', 'archtecture engineering'),
('Adena Ortiz', 516, 'hymenaeos.mauris.ut@google.net', 'May Simon', 'fourth', 'section4', 'archtecture engineering'),
('Carissa Hampton', 517, 'nisl@yahoo.org', 'Gannon Stout', 'third', 'section4', 'archtecture engineering'),
('Christian Baker', 518, 'porttitor.scelerisque@yahoo.ca', 'Fay Langley', 'second', 'section4', 'archtecture engineering'),
('Mariam Booker', 519, 'pulvinar.arcu@outlook.couk', 'Arsenio Humphrey', 'third', 'section4', 'archtecture engineering'),
('Jaime Alston', 520, 'elit@google.org', 'Lawrence Knox', 'third', 'section4', 'archtecture engineering'),
('Phelan Witt', 521, 'ornare@icloud.com', 'Hiroko Savage', 'second', 'section4', 'archtecture engineering'),
('Asher Kemp', 522, 'ligula@aol.org', 'Sonia Harrell', 'second', 'section4', 'archtecture engineering'),
('Kadeem Cain', 523, 'phasellus.vitae@google.org', 'Kelly Warner', 'second', 'section4', 'archtecture engineering'),
('Leroy Pennington', 524, 'sociis.natoque.penatibus@hotmail.ca', 'Genevieve Knight', 'first', 'section4', 'archtecture engineering'),
('Hyacinth Guzman', 525, 'aenean.gravida@google.couk', 'Emmanuel Roberts', 'fourth', 'section4', 'archtecture engineering'),
('Mohammad Pope', 526, 'auctor.mauris.vel@icloud.net', 'Rudyard Gregory', 'first', 'section4', 'archtecture engineering'),
('Kaitlin Washington', 527, 'amet.ultricies@aol.net', 'Carol Mcdowell', 'second', 'section4', 'archtecture engineering'),
('Dorothy Stout', 528, 'eu.tellus.phasellus@aol.org', 'Jolie Gallagher', 'fourth', 'section4', 'archtecture engineering'),
('Michael Petersen', 529, 'dapibus@aol.edu', 'Andrew Kelly', 'second', 'section4', 'archtecture engineering'),
('Alden Roach', 530, 'egestas.a@hotmail.edu', 'Xenos Mccarty', 'fourth', 'section4', 'archtecture engineering'),
('Jorden Boyle', 531, 'adipiscing.mauris@aol.couk', 'Ezekiel Shaffer', 'third', 'section4', 'archtecture engineering'),
('Maggie Barron', 532, 'egestas.hendrerit.neque@protonmail.ca', 'Salvador Schneider', 'fourth', 'section4', 'archtecture engineering'),
('Rebekah Newman', 533, 'ut.eros@google.couk', 'Seth Nash', 'third', 'section4', 'archtecture engineering'),
('Buffy Thornton', 534, 'facilisis.lorem@google.edu', 'Kay Gill', 'fourth', 'section4', 'archtecture engineering'),
('Ocean Cochran', 535, 'sem.semper@icloud.org', 'Eugenia Miranda', 'first', 'section4', 'archtecture engineering'),
('Neve Watts', 536, 'nec@google.org', 'Forrest Daniels', 'fourth', 'section4', 'archtecture engineering'),
('Keane Merritt', 537, 'dapibus@icloud.ca', 'Rosalyn Whitney', 'fourth', 'section4', 'archtecture engineering'),
('Kelly Thompson', 538, 'nulla.ante.iaculis@hotmail.org', 'Alan Small', 'second', 'section4', 'archtecture engineering'),
('Calvin Clemons', 539, 'nec@hotmail.couk', 'Armando Melendez', 'first', 'section4', 'archtecture engineering'),
('Winter Martinez', 540, 'consectetuer.mauris.id@aol.org', 'Evangeline Mcdowell', 'fourth', 'section4', 'archtecture engineering'),
('Ian Reeves', 541, 'auctor.vitae@outlook.net', 'Remedios Murphy', 'third', 'section4', 'archtecture engineering'),
('Reece Jarvis', 542, 'sociis.natoque@outlook.couk', 'Remedios Becker', 'second', 'section4', 'archtecture engineering'),
('Eaton Olson', 543, 'suspendisse.eleifend.cras@aol.com', 'Candace Palmer', 'third', 'section4', 'archtecture engineering'),
('Abbot Kane', 544, 'donec@outlook.net', 'Wynter Hoffman', 'third', 'section4', 'archtecture engineering'),
('Chadwick Bowen', 545, 'nulla.eget@yahoo.edu', 'Martin Nichols', 'fourth', 'section4', 'archtecture engineering'),
('Alfreda Blackburn', 546, 'lacus.ut@hotmail.edu', 'Emily Dudley', 'second', 'section4', 'archtecture engineering'),
('Isabelle Alvarez', 547, 'ornare.facilisis@aol.com', 'Abigail Padilla', 'second', 'section4', 'archtecture engineering'),
('Oren Brock', 548, 'etiam.gravida@google.couk', 'Herman Rodriguez', 'second', 'section4', 'archtecture engineering'),
('Dale Peck', 549, 'dis.parturient@outlook.edu', 'Desiree Ford', 'fourth', 'section4', 'archtecture engineering'),
('Vance Sullivan', 550, 'diam.nunc@protonmail.net', 'Philip Daugherty', 'second', 'section4', 'archtecture engineering'),
('Demetrius Mcdonald', 551, 'leo.cras@icloud.couk', 'Scarlet Callahan', 'second', 'section4', 'archtecture engineering'),
('Faith Guerrero', 552, 'arcu.morbi@aol.ca', 'Destiny Reese', 'first', 'section4', 'archtecture engineering'),
('Martin Clarke', 553, 'dolor.quisque@outlook.ca', 'Constance Alexander', 'second', 'section4', 'archtecture engineering'),
('Audrey Roy', 554, 'et.nunc@yahoo.couk', 'Tobias Hall', 'third', 'section4', 'archtecture engineering'),
('Cameron Morrison', 555, 'imperdiet.non.vestibulum@aol.edu', 'Teagan Fulton', 'third', 'section4', 'archtecture engineering'),
('Dexter Holman', 556, 'a.purus.duis@google.net', 'Neil Riggs', 'fourth', 'section4', 'archtecture engineering'),
('Genevieve Alvarado', 557, 'adipiscing@outlook.net', 'Merritt Bullock', 'first', 'section4', 'archtecture engineering'),
('Ivor Ware', 558, 'vestibulum.ut@icloud.couk', 'Connor Hurst', 'third', 'section4', 'archtecture engineering'),
('Dahlia Robertson', 559, 'eleifend@protonmail.couk', 'Cadman Pena', 'third', 'section4', 'archtecture engineering'),
('Caleb Gray', 560, 'est@hotmail.couk', 'Amir Mckay', 'third', 'section4', 'archtecture engineering'),
('Jerry Whitaker', 561, 'et.lacinia@icloud.ca', 'Nell Stout', 'fourth', 'section4', 'archtecture engineering'),
('Hall Gilliam', 562, 'ante@google.net', 'Heidi Russo', 'second', 'section4', 'archtecture engineering'),
('Kaseem Simpson', 563, 'ornare@yahoo.com', 'Wesley Chen', 'second', 'section4', 'archtecture engineering'),
('Lyle Wilder', 564, 'dis.parturient@outlook.org', 'Dalton Wilson', 'first', 'section4', 'archtecture engineering'),
('Lillian Hurst', 565, 'etiam.imperdiet@hotmail.couk', 'Cyrus Colon', 'fourth', 'section4', 'archtecture engineering'),
('Dahlia Warner', 566, 'lacus@google.couk', 'Berk Gibson', 'fourth', 'section4', 'archtecture engineering'),
('Raja Chambers', 567, 'ornare.fusce@yahoo.com', 'Nathan Coleman', 'fourth', 'section4', 'archtecture engineering'),
('Xyla Clark', 568, 'aenean.sed@protonmail.org', 'Clare Delaney', 'fourth', 'section4', 'archtecture engineering'),
('Richard Harrell', 569, 'ante.bibendum.ullamcorper@google.ca', 'Ashton Dorsey', 'fourth', 'section4', 'archtecture engineering'),
('Xena Stevens', 570, 'neque.sed.eget@icloud.com', 'Aspen Stewart', 'second', 'section4', 'archtecture engineering'),
('Rana Roberson', 571, 'ultrices.a@yahoo.com', 'Len Schneider', 'third', 'section4', 'archtecture engineering'),
('Alice Sheppard', 572, 'sed.dictum.eleifend@protonmail.net', 'Simone Buck', 'first', 'section4', 'archtecture engineering'),
('Geoffrey Rojas', 573, 'a.purus@outlook.edu', 'Ima Reyes', 'first', 'section4', 'archtecture engineering'),
('Jasper Harper', 574, 'ornare@outlook.ca', 'Lilah Garrett', 'fourth', 'section4', 'archtecture engineering'),
('Hedy Newton', 575, 'ipsum@outlook.org', 'Dexter Hayden', 'second', 'section4', 'archtecture engineering'),
('Reagan Lawrence', 576, 'justo@aol.edu', 'Darrel Whitehead', 'second', 'section4', 'archtecture engineering'),
('Dahlia Hodge', 577, 'ligula.aenean@outlook.edu', 'Alexandra Knowles', 'second', 'section4', 'archtecture engineering'),
('Darius Lowe', 578, 'egestas.nunc.sed@yahoo.couk', 'Benjamin Craft', 'third', 'section4', 'archtecture engineering'),
('Allistair Haynes', 579, 'proin@yahoo.edu', 'Leigh Orr', 'fourth', 'section4', 'archtecture engineering'),
('Lane Gibson', 580, 'metus.vitae.velit@hotmail.ca', 'Jacob Quinn', 'third', 'section4', 'archtecture engineering'),
('Bradley Gates', 581, 'sed.pharetra@protonmail.couk', 'Jasmine Rogers', 'first', 'section4', 'archtecture engineering'),
('Alika Burnett', 582, 'tellus.id@outlook.com', 'Jemima Barnett', 'fourth', 'section4', 'archtecture engineering'),
('Robert Greer', 583, 'egestas.aliquam@protonmail.net', 'Brandon Murray', 'fourth', 'section4', 'archtecture engineering'),
('Ursula Britt', 584, 'montes.nascetur.ridiculus@yahoo.org', 'Marny Padilla', 'third', 'section4', 'archtecture engineering'),
('Britanney Roberts', 585, 'justo.sit@protonmail.edu', 'Kitra Mckee', 'second', 'section4', 'archtecture engineering'),
('Mechelle Oliver', 586, 'sed.id@protonmail.ca', 'Madeline Melendez', 'third', 'section4', 'archtecture engineering'),
('Maite Emerson', 587, 'justo.praesent@outlook.couk', 'Olivia Ryan', 'fourth', 'section4', 'archtecture engineering'),
('Adria Christensen', 588, 'nec.urna@outlook.edu', 'Hadassah Hatfield', 'first', 'section4', 'archtecture engineering'),
('Idona Curtis', 589, 'eu.metus@yahoo.ca', 'Ariel Dixon', 'third', 'section4', 'archtecture engineering'),
('Dominic Merrill', 590, 'malesuada.integer@aol.net', 'Howard Erickson', 'first', 'section4', 'archtecture engineering'),
('Rhona Hurst', 591, 'neque.pellentesque.massa@outlook.net', 'Adena Camacho', 'fourth', 'section4', 'archtecture engineering'),
('Malachi Herring', 592, 'a@outlook.net', 'Drake Perez', 'first', 'section4', 'archtecture engineering'),
('Octavia Drake', 593, 'ligula.consectetuer@yahoo.net', 'Mufutau Wall', 'fourth', 'section4', 'archtecture engineering'),
('Constance Gentry', 594, 'sagittis.semper.nam@icloud.com', 'Paul Hyde', 'first', 'section4', 'archtecture engineering'),
('Freya Gould', 595, 'in.lobortis@protonmail.edu', 'Brian Powers', 'fourth', 'section4', 'archtecture engineering'),
('Hop Barron', 596, 'a.ultricies.adipiscing@yahoo.ca', 'Lamar Collier', 'second', 'section4', 'archtecture engineering'),
('Prescott Robinson', 597, 'eu.eros@yahoo.couk', 'Kiara Vega', 'first', 'section4', 'archtecture engineering'),
('Cailin Harper', 598, 'sit.amet@yahoo.com', 'Zoe Lara', 'second', 'section4', 'archtecture engineering'),
('Madonna Blake', 599, 'dui.nec@google.com', 'Ulla Wiley', 'third', 'section4', 'archtecture engineering'),
('Pandora Daniel', 600, 'commodo.auctor@icloud.ca', 'Keely Potter', 'first', 'section4', 'archtecture engineering'),
('Mufutau Cherry', 601, 'odio.nam.interdum@protonmail.edu', 'Catherine Winters', 'fourth', 'section4', 'archtecture engineering'),
('Murphy Frye', 602, 'ligula.aenean@icloud.ca', 'Bryar Heath', 'first', 'section4', 'archtecture engineering'),
('Maxine Griffin', 603, 'donec.at.arcu@google.com', 'Leila Bernard', 'first', 'section4', 'archtecture engineering'),
('Cooper Aguilar', 604, 'convallis.est@outlook.couk', 'Germaine Bell', 'third', 'section4', 'archtecture engineering'),
('Darrel Fleming', 605, 'porta@hotmail.net', 'Jesse Harrell', 'first', 'section4', 'archtecture engineering'),
('Aphrodite Miles', 606, 'imperdiet.nec@protonmail.com', 'Tallulah Moses', 'second', 'section5', 'civil engineering'),
('Mara Kirby', 607, 'faucibus@icloud.org', 'Xandra Day', 'second', 'section5', 'civil engineering'),
('Veronica Wise', 608, 'mauris.vel@aol.com', 'Burke Key', 'fourth', 'section5', 'civil engineering'),
('George Rush', 609, 'nulla.facilisi.sed@yahoo.net', 'Jamalia Mcclure', 'fourth', 'section5', 'civil engineering'),
('Stuart Lowe', 610, 'ipsum@hotmail.couk', 'Jasmine Brennan', 'first', 'section5', 'civil engineering'),
('Rama Wiggins', 611, 'turpis.vitae@aol.net', 'Daquan Bass', 'third', 'section5', 'civil engineering'),
('Elaine Stevenson', 612, 'pellentesque.sed.dictum@icloud.edu', 'Sigourney Neal', 'third', 'section5', 'civil engineering'),
('Quinn Harris', 613, 'diam@google.edu', 'Phelan Mcfadden', 'second', 'section5', 'civil engineering'),
('Marah Berg', 614, 'rutrum.lorem.ac@hotmail.com', 'Lucius Ballard', 'second', 'section5', 'civil engineering'),
('Uma Zamora', 615, 'lobortis.mauris@hotmail.net', 'Erin Fuller', 'first', 'section5', 'civil engineering'),
('Phillip Mueller', 616, 'donec@hotmail.net', 'Gareth Mcguire', 'fourth', 'section5', 'civil engineering'),
('Virginia Stewart', 617, 'magna.et@hotmail.com', 'Portia Francis', 'first', 'section5', 'civil engineering'),
('Katell Hubbard', 618, 'sagittis@hotmail.com', 'Ocean Jacobson', 'fourth', 'section5', 'civil engineering'),
('Lamar Coffey', 619, 'lorem.eget@aol.com', 'Blossom Bell', 'third', 'section5', 'civil engineering'),
('Kennan Larsen', 620, 'eget@aol.com', 'Burke Lyons', 'fourth', 'section5', 'civil engineering'),
('Erasmus Shepard', 621, 'volutpat.nulla.facilisis@hotmail.edu', 'Christian Kent', 'fourth', 'section5', 'civil engineering'),
('Sage Roy', 622, 'gravida.sit.amet@google.couk', 'Calvin Levine', 'third', 'section5', 'civil engineering'),
('Amal Hicks', 623, 'tempus@aol.net', 'Basia Ewing', 'third', 'section5', 'civil engineering'),
('Lysandra Underwood', 624, 'lorem@hotmail.edu', 'Carl Vinson', 'third', 'section5', 'civil engineering'),
('Robert Morin', 625, 'sed.eu@google.ca', 'Skyler Erickson', 'first', 'section5', 'civil engineering'),
('Rigel Hall', 626, 'lacus.ut@yahoo.com', 'Yvette Frye', 'fourth', 'section5', 'civil engineering'),
('Abdul Baldwin', 627, 'risus.odio@aol.org', 'Neville Logan', 'first', 'section5', 'civil engineering'),
('Blossom Carver', 628, 'scelerisque.scelerisque@yahoo.couk', 'Miranda Mcfarland', 'third', 'section5', 'civil engineering'),
('Sheila Malone', 629, 'nulla.vulputate@google.org', 'Ivor Gregory', 'second', 'section5', 'civil engineering'),
('Courtney Harvey', 630, 'nulla.facilisis.suspendisse@google.com', 'Amy Stark', 'third', 'section5', 'civil engineering'),
('Susan Gibson', 631, 'nulla.semper@hotmail.ca', 'Oliver Harding', 'fourth', 'section5', 'civil engineering'),
('Wyoming Schroeder', 632, 'lacus.vestibulum@icloud.ca', 'Kameko Reid', 'first', 'section5', 'civil engineering'),
('Amelia Stanton', 633, 'at.velit@aol.ca', 'Warren Tillman', 'fourth', 'section5', 'civil engineering'),
('Candice Hamilton', 634, 'auctor@outlook.couk', 'Fletcher Hebert', 'third', 'section5', 'civil engineering'),
('Holly Ortiz', 635, 'pellentesque@google.couk', 'Aladdin Garrison', 'second', 'section5', 'civil engineering'),
('Molly Hernandez', 636, 'quisque.ornare.tortor@google.net', 'Travis Ochoa', 'second', 'section5', 'civil engineering'),
('Portia Horn', 637, 'sagittis.duis.gravida@google.edu', 'Ethan Gilmore', 'first', 'section5', 'civil engineering'),
('Macaulay Frazier', 638, 'auctor@hotmail.com', 'Roary King', 'third', 'section5', 'civil engineering'),
('Amity Caldwell', 639, 'velit.cras@aol.net', 'Cadman Dickerson', 'first', 'section5', 'civil engineering'),
('Graiden Carlson', 640, 'vitae@protonmail.ca', 'Elaine English', 'first', 'section5', 'civil engineering'),
('Asher Mcdonald', 641, 'ut@hotmail.net', 'Judah Thornton', 'third', 'section5', 'civil engineering'),
('Bradley Blake', 642, 'sagittis@outlook.org', 'Ray Hendrix', 'second', 'section5', 'civil engineering'),
('Sopoline Noel', 643, 'hendrerit.id.ante@google.couk', 'Demetrius Chase', 'third', 'section5', 'civil engineering'),
('Sawyer Larsen', 644, 'tortor.nibh.sit@outlook.net', 'Adrian Hatfield', 'second', 'section5', 'civil engineering'),
('Ashely Blake', 645, 'class.aptent.taciti@yahoo.net', 'Jada Mccall', 'first', 'section5', 'civil engineering');
INSERT INTO `students` (`user_name`, `id`, `email`, `password`, `grade`, `section`, `department`) VALUES
('Preston Saunders', 646, 'risus@aol.ca', 'Chaney Bryan', 'third', 'section5', 'civil engineering'),
('Rashad Alvarado', 647, 'rutrum.fusce@outlook.com', 'Fritz Munoz', 'second', 'section5', 'civil engineering'),
('Josiah Middleton', 648, 'pede.praesent@icloud.com', 'Allistair Houston', 'fourth', 'section5', 'civil engineering'),
('Karina Koch', 649, 'integer@protonmail.org', 'Aquila Hardy', 'fourth', 'section5', 'civil engineering'),
('Francesca Montgomery', 650, 'euismod.in@hotmail.edu', 'Mason Ortiz', 'third', 'section5', 'civil engineering'),
('Shafira Fletcher', 651, 'mi@hotmail.org', 'Ava Galloway', 'first', 'section5', 'civil engineering'),
('Ivan Day', 652, 'nullam@icloud.net', 'Hilel Serrano', 'second', 'section5', 'civil engineering'),
('Echo Bruce', 653, 'gravida.aliquam.tincidunt@outlook.net', 'Kay York', 'third', 'section5', 'civil engineering'),
('Blaze Kane', 654, 'donec.tempus@google.ca', 'James Kelly', 'second', 'section5', 'civil engineering'),
('Justin Huber', 655, 'lectus.a@icloud.com', 'Lawrence Delgado', 'fourth', 'section5', 'civil engineering'),
('Tamekah Foster', 656, 'mauris@hotmail.ca', 'Kimberley Holder', 'third', 'section5', 'civil engineering'),
('Jacob Mccormick', 657, 'cras.eget.nisi@hotmail.couk', 'Noelle Vance', 'second', 'section5', 'civil engineering'),
('Adria Reilly', 658, 'at@aol.couk', 'Oleg Osborne', 'first', 'section5', 'civil engineering'),
('Hillary Levine', 659, 'consequat@icloud.org', 'Melinda Rutledge', 'second', 'section5', 'civil engineering'),
('Sarah Norris', 660, 'mauris@icloud.org', 'Buckminster Copeland', 'fourth', 'section5', 'civil engineering'),
('Shelby Tyler', 661, 'condimentum.eget@aol.org', 'Joshua Good', 'third', 'section5', 'civil engineering'),
('Hilel Elliott', 662, 'quisque.porttitor@icloud.com', 'Victor Watkins', 'third', 'section5', 'civil engineering'),
('Montana Washington', 663, 'magna.cras.convallis@aol.edu', 'Ivy Guy', 'first', 'section5', 'civil engineering'),
('Kennan Whitaker', 664, 'enim.diam@aol.net', 'Coby Mathews', 'third', 'section5', 'civil engineering'),
('Cyrus Prince', 665, 'turpis.in@google.ca', 'Valentine Lancaster', 'second', 'section5', 'civil engineering'),
('Aurora Hardy', 666, 'euismod.enim@icloud.ca', 'Hollee Hampton', 'fourth', 'section5', 'civil engineering'),
('Magee Stuart', 667, 'nascetur.ridiculus@google.net', 'Summer Harding', 'fourth', 'section5', 'civil engineering'),
('Remedios Vaughan', 668, 'turpis.nec@hotmail.couk', 'Oscar Downs', 'third', 'section5', 'civil engineering'),
('Tyler Carpenter', 669, 'sit.amet.risus@outlook.ca', 'Bevis Cash', 'third', 'section5', 'civil engineering'),
('Melvin Casey', 670, 'proin.nisl@aol.net', 'Troy Dorsey', 'third', 'section5', 'civil engineering'),
('Madeson Donaldson', 671, 'morbi.sit.amet@icloud.edu', 'Sheila Zamora', 'second', 'section5', 'civil engineering'),
('Abel Roy', 672, 'neque.et@icloud.ca', 'Fredericka Gaines', 'first', 'section5', 'civil engineering'),
('Neville Hancock', 673, 'auctor.nunc.nulla@google.com', 'Maggy Weber', 'first', 'section5', 'civil engineering'),
('Rafael Bartlett', 674, 'tempor.augue@outlook.ca', 'Caleb Mcdonald', 'second', 'section5', 'civil engineering'),
('Kimberley Brock', 675, 'odio.a@hotmail.ca', 'Xantha Ware', 'third', 'section5', 'civil engineering'),
('Theodore Vargas', 728, 'eget.ipsum@aol.net', 'Oscar Burt', 'second', 'section5', 'civil engineering'),
('Hoyt English', 729, 'in.scelerisque.scelerisque@icloud.net', 'Kalia Dawson', 'first', 'section5', 'civil engineering'),
('James Fry', 730, 'cras.eu.tellus@aol.org', 'Dora Stuart', 'fourth', 'section5', 'civil engineering'),
('Zelda Ramsey', 731, 'vivamus.euismod@hotmail.ca', 'Lars Garza', 'second', 'section5', 'civil engineering'),
('Jasper Jordan', 732, 'integer.eu@google.net', 'Kelly Carter', 'fourth', 'section5', 'civil engineering'),
('Shelly Randall', 733, 'odio.auctor@hotmail.couk', 'Asher Mcfarland', 'first', 'section5', 'civil engineering'),
('Keaton Moon', 734, 'vitae.sodales.at@hotmail.couk', 'Graham Prince', 'third', 'section5', 'civil engineering'),
('Hakeem Navarro', 735, 'mi.tempor.lorem@aol.ca', 'Alika Jordan', 'third', 'section5', 'civil engineering'),
('Tasha Ortega', 736, 'in.cursus@outlook.net', 'Ruby Buck', 'fourth', 'section5', 'civil engineering'),
('Jarrod Cochran', 737, 'suspendisse.sed@outlook.com', 'Belle Chaney', 'fourth', 'section5', 'civil engineering'),
('Mariam Marsh', 738, 'risus.nunc.ac@hotmail.couk', 'Igor Fields', 'third', 'section5', 'civil engineering'),
('Duncan Dejesus', 739, 'est.ac.facilisis@yahoo.com', 'Ivor Beard', 'first', 'section5', 'civil engineering'),
('Griffith Mayo', 740, 'sed.consequat.auctor@google.ca', 'Quyn Mercado', 'third', 'section5', 'civil engineering'),
('Macey Ballard', 741, 'malesuada.vel.venenatis@icloud.com', 'Jessica Conner', 'third', 'section5', 'civil engineering'),
('Channing Garner', 742, 'curabitur.egestas.nunc@aol.net', 'Brandon Garrison', 'third', 'section5', 'civil engineering'),
('Francis Dickson', 743, 'mauris@aol.edu', 'Kirby Dodson', 'third', 'section5', 'civil engineering'),
('Wayne Adkins', 744, 'dolor.donec@outlook.couk', 'Drew Schwartz', 'second', 'section5', 'civil engineering'),
('Tanner Snow', 745, 'ut.nec@hotmail.net', 'Karina Avila', 'fourth', 'section5', 'civil engineering'),
('Geoffrey Haney', 746, 'non.enim@aol.org', 'Mollie Boyle', 'fourth', 'section5', 'civil engineering'),
('Ira Ratliff', 747, 'quisque@hotmail.couk', 'Abraham Scott', 'fourth', 'section5', 'civil engineering'),
('Ahmed', 751, 'ahmedelkharashy319@gmail.com', 'ahmed', 'prep', 'section1', 'Choose...'),
('student1', 752, 'student1@gmail.com', 'student1', 'prep', 'section1', ''),
('Hedda Richard', 753, 'sdfs@outlook.org', 'Richard', 'prep', 'section1', ''),
('Richard', 754, 'mldsmf@mail.com', 'admin1', 'prep', 'section1', ''),
('alucard', 755, 'alu@gmail.com', 'mewo', 'prep', 'section1', ''),
('yser thing', 756, 'email@email.com', 'admin1', 'prep', 'section1', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`name`) VALUES
('math'),
('physics');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `user_name` varchar(255) NOT NULL,
  `id` int(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`user_name`, `id`, `email`, `password`) VALUES
('teacher1', 1, 'teacher1@gmail', 'teacher1'),
('teacher2', 2, 'teacher2@gmail.com', 'teacher2'),
('teacher3', 3, 'teacher3@gmail.com', 'teacher3'),
('teacher4', 4, 'teacher4@gmail.com', 'teacher4'),
('prof', 5, 'prof@gmail.com', 'prof'),
('ahmed', 6, 'ahmedelkharashy319@gmail.com', 'ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(12) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `course_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic`, `file`, `description`, `course_id`) VALUES
(5, 'topic2', '../uploads/1708143796026-Name of Project FullStack PlatForm.pdf', 'some descrebtion', 1),
(6, 'topic3', '../uploads/1708143821836-qrcode_96108735_b5770fca7ea2d2c1befd957b518c39e7.png', 'another descreption', 1),
(7, 'topic4', '../uploads/1708143868107-Ø´ÙØª 4.pdf', 'descreption', 1),
(9, 'topic1', '../uploads/1708143975082-WhatsApp Image 2023-11-08 at 21.28.44_2346d28c.jpg', 'math1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`user_name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`user_name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
