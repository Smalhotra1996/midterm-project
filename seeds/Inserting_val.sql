INSERT INTO users (id, register_on, name, email, password)
VALUES(1,'1986-09-17','susan', 'susan@gmail.com','000'),
(2,'1956-09-24','susanil', 'susaan@gmail.com','000'),
(3,'1986-04-17','sunakshi', 'susdan@gmail.com','000'),
(4,'1936-05-27','Mishi', 'susann@gmail.com','000'),
(5,'1946-02-24','sana', 'sus,san@gmail.com','000'),
(6,'1996-01-27','susaan', 's,uusan@gmail.com','000'),
(7,'1996-01-27','suban', 'sussan@gmail.com','000'),
(8,'1996-01-27','sushant', 'suusan@gmail.com','000');


INSERT INTO quizzes (id, owner_id, create_on, title, description, visibility, photo_url,category )
VALUES
(1,1,'2016-05-12','SQL BASIC QUIZ ','There are a list of sql quizzes that will clear your sql concepts. We have divided the SQL quizzes into different parts such as SQL basic concepts quiz, CRUD operation quiz, JOIN quiz, miscellaneous quiz etc.','TRUE','https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/7a/569080aab711e79d97bf25c196049d/1200px-square-dark.jpg?auto=format%2Ccompress&dpr=1','Technical'),

(2,3,'2011-01-10','SQL CRUD Quiz','There are a list of sql quizzes that will clear your sql concepts. We have divided the SQL quizzes into different parts such as SQL basic concepts quiz, CRUD operation quiz, JOIN quiz, miscellaneous quiz etc.','TRUE',' https://www.kdnuggets.com/wp-content/uploads/sql.jpg','Technical'),

(3,1,'1994-03-11', 'BAsic cooking','What do you know about basic cooking methods? Almost everyone knows how to boil an egg, make spaghetti, or a simple grilled cheese sandwich. One of the initial things you learn when you begin to cook for yourself or your family...','TRUE','https://i.guim.co.uk/img/media/acb02b9fc3e12cb965441dc1d77eed8d19572afd/0_150_4535_2723/master/4535.jpg?width=465&quality=45&auto=format&fit=max&dpr=2&s=5f9b928b8d484192ee2ff5c2ecc083d5','ART'),

 (4,4,'2011-04-11','10th Grade Math','10th grade math topics are planned and covered all the lessons in different segments. 10th grade math help is provided for the 10th grade students in all segments to cover all the math lesson plans which are categorized into Arithmetic, Algebra, Geometry, Mensuration and Trigonometry.
All types of solved examples on different topics are explained along with the step-by-step solutions so that students can attempt how to solve these problems quickly in your own convenient methods. 10th grade math practice sheets are presented in such a way that students can learn math while practicing math problems.Keeping in mind the mental level of student in tenth grade, every efforts has been made to introduce new concepts in a simple and easy language, so that the students can understand the problems easily.','TRUE','https://t4.ftcdn.net/jpg/02/38/56/47/360_F_238564757_L7gsykjvZe2Sdtnyfa0mHd0fObHU4f5G.jpg','equational'),

(5,5,'1992-02-10','11 and 12 Grade Math','11 and 12 grade math practice the topics are divided into three parts. Part one deals with elementary Algebra, part two provides a basic course in trigonometry and part three considers elements of two dimensional Co-ordinate Geometry including solid geometry and mensuration.
Each topic that are covered in 11 and 12 grade math, concepts is enlightened with a summarization which includes important theorems, results and formula are discussed in each topic with numerous types of solved examples. Sufficient number of problems have been inserted in grade 11 and 12 practice math task worksheets beginning with easier followed gradually by harder ones.
 It is expected that students should be acquainted with the basic 11 and 12 grade math concepts relating to each topic and should be able to apply those to simple elementary problems, preferably numerical.','TRUE','https://t4.ftcdn.net/jpg/02/38/56/47/360_F_238564757_L7gsykjvZe2Sdtnyfa0mHd0fObHU4f5G.jpg','equational'),

 (6,6,'1990-12-03','Drawing','Not all people are creative in sketching or drawing things or objects they would like to see for real. Are you an aspiring artist or a person who wants to draw for fun? Well, which one you are, you might be wondering what to bring next? This "What should I draw quiz" will help you find out what would be good for you to draw.', 'TRUE','https://images.squarespace-cdn.com/content/v1/5fb0aea913eba3050d739796/1624329450537-9ODYT93F8QSAJYW9S03A/sketchbook_professional_drawing.png','ART'),

 (7,7,'1982-4-01','French Product Quizzes','French quiz based on Learn Language Now language software from Transparent Language. Free language resources to support your French learning.','TRUE','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh7-4sALYRyJApuyoauOCOeorYfAl7ydec5ZnjZJhxD-V6sTzwTa3RC5ryzLZRQ2Pwc7k&usqp=CAU','language'),

 (8,8,'1778-02-21','eQuiz.Me','Free English quiz tests :white_check_mark: for ESL learners to do online. Test your English grammar and vocabulary FREE. With answers. For ESL learners and teachers.','TRUE','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShLoc6OI7DR5QA0lVUECkOJKSRMvqWTtIYaQ&usqp=CAU','language');


INSERT INTO questions (id, quiz_id, question)
 VALUES
  (1,1,'1- What is the full form of SQL? a.Structured Query List  b.Structure Query Language '),
  (2,1,'2- Which of the following is not a valid SQL type?    a. DECIMAL  b. CHARACTER'),
  (3,2,'1- Which of the following is not a DDL command?t  a) SELECT and INSERT b)non'),
  (4,2,'2- Which of the following is not a DDL command? a) TRUNCATE b) UPDATE'),
  (5,3,'Question 1.The correct description for boiling is a.Small bubbles breaking at the surface 98 degrees celsius. b.Large bubbles breaking at the surface 100 degrees celsius. '),
  (6,3,'Question 2.The correct description for simmering is. a.Small bubbles breaking at the surface 98 degrees celsius. b.No bubbles 95 degrees celsius.'),
  (7,3,'Question 1.The correct description for poaching is a.Half-covered with liquid, covered and cooked in the oven.b.
  Completely covered with liquid, covered and cooked in the oven.'),
  (8,4, 'How many right angles are there in a square?'),
  (9, 4, '10 + 9 ='),
  (10,5,'Q1. Is g(x) the inverse function of f(x)?f(x)=x–7  g(x)=x+7'),
  (11,5,'Q2.s f(x) the inverse function f g(x)?  f(x)=x–9   g(x)=x+9'),
  (12,6,'Q1. The lines that describe the outer edges of objects and figures are called _____.'),
  (13,6,'Q2.2. A drawing technique for shading using parallel lines that cross over other parallel lines,'),
  (14,7,'Q1. "How are you?" in French  a. Comment allez-vous ? b. quoi?' ),
  (15,7, 'Q2. How to answer "how are you? a)Je vais bien, et vous ? b.qui?'),
  (16,8,'Q1. The students in our college are _________ than other colleges students! a. smartter b smartest'),
  (17,8,'Q2. How long ______ English? a.have you been learning b.you learn');

INSERT INTO answers(id,question_id,value, is_correct)
VALUES

(1,1,'a.Structured Query List', TRUE),
(2,1,'b.Structure Query Language ', FALSE),
(3,1,'a. DECIMAL', TRUE),
(4,1,'b. CHARACTER', FALSE),
(5,2,'a) SELECT and INSERT ', FALSE),
(6,2,'b)non', FALSE ),
(7,2,'a) TRUNCATE ', FALSE),
(8,2, 'b) UPDATE', FALSE),
(9,3,'b.Large bubbles breaking at the surface 100 degrees celsius', TRUE),
(10,3,'a.Small bubbles breaking at the surface 98 degrees celsius.', FALSE),
(11,3,'b.No bubbles 95 degrees celsius', TRUE),
(12,3,' a.Small bubbles breaking at the surface 98 degrees celsius.', FALSE),
(13,3,'a.Half-covered with liquid, covered and cooked in the oven.', FLASE),
(14,3,'b. Completely covered with liquid, covered and cooked in the oven', TRUE),
(15,4,4, TRUE),
(16,4,19, TRUE),
(17,5,'t', TRUE),
(18,5,'f, FALSE),
(19,5,'t', TRUE),
(20,5,'f, FALSE),
(21,6,'contour lines', TRUE),
(22,6,'Hatching', TRUE),
(23,7,'a. Comment allez-vous ?', TRUE),
(24,7,' b. quoi?', FALSE),
(24,7,'a)Je vais bien', TRUE),
(25,7,'b.qui?', FALSE),
(26,8,'a. smartter', TRUE),
(27,8,'b smartes', FALSE),
(28,8,'a.have you been learning', TRUE),
(26,8,'b.you learn', FALSE);



INSERT INTO attempts( id,attempt_on,quiz_id, user_id,  score)
VALUES
(1,'2021-01-01',3,2,0.7),
(2,'2020-02-03',1,2,0.6),
(3,'2020-01-01',5,2,0.5),
(4,'2021-01-01',3,3,0.7),
(5,'2019-02-03',6,5,0.8),
(6,'2020-01-01',5,7,0.5),
(7,'2021-01-01',3,2,0.7),
(8,'2020-02-03',7,4,0.8),
(9,'2020-01-01',8,8,0.5),
(10,'2021-01-01',3,2,0.7),
(12,'2020-02-03',2,4,0.8),
(13,'2020-01-01',5,7,0.5),
(14,'2021-01-01',3,2,0.7),
(15,'2019-02-03',6,4,0.8),
(16,'2020-01-01',5,8, 0.5),
(17,'2021-01-01',3,2,0.7),
(18,'2020-02-03',7,4,0.9),
(19,'2020-01-01',8,1,1),
(20,'2020-02-11',1,1,0.6 );

