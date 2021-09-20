INSERT INTO users (id,register_on, name, email, password)

VALUES(1,'1986-09-17','susan', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(2'1956-09-24','susanil', 'susaan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(3'1986-04-17','sunakshi', 'susdan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(4'1936-05-27','Mishi', 'susann@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(5'1946-02-24','sana', 'sus,san@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(6'1996-01-27','susaan', 's,uusan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(7'1996-01-27','suban', 'sussan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(8'1996-01-27','sushant', 'suusan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u')




INSERT INTO quizzes (id, owner_id, create_on, title, description, visibility, photo_url,category )
VALUES(1,4,'2016-05-12','SQL BASIC QUIZ ','There are a list of sql quizzes that will clear your sql concepts. We have divided the SQL quizzes into different parts such as SQL basic concepts quiz, CRUD operation quiz, JOIN quiz, miscellaneous quiz etc.','https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/7a/569080aab711e79d97bf25c196049d/1200px-square-dark.jpg?auto=format%2Ccompress&dpr=1','Technical'),
(2,3,'2011-01-10','SQL CRUD Quiz','There are a list of sql quizzes that will clear your sql concepts. We have divided the SQL quizzes into different parts such as SQL basic concepts quiz, CRUD operation quiz, JOIN quiz, miscellaneous quiz etc.',' https://www.kdnuggets.com/wp-content/uploads/sql.jpg','Technical'),
(3,1,'1994-03-11', 'BAsic cooking','What do you know about basic cooking methods? Almost everyone knows how to boil an egg, make spaghetti, or a simple grilled cheese sandwich. One of the initial things you learn when you begin to cook for yourself or your family...','https://i.guim.co.uk/img/media/acb02b9fc3e12cb965441dc1d77eed8d19572afd/0_150_4535_2723/master/4535.jpg?width=465&quality=45&auto=format&fit=max&dpr=2&s=5f9b928b8d484192ee2ff5c2ecc083d5','ART'),
 (4,2,'2011-04-11','10th Grade Math','10th grade math topics are planned and covered all the lessons in different segments. 10th grade math help is provided for the 10th grade students in all segments to cover all the math lesson plans which are categorized into Arithmetic, Algebra, Geometry, Mensuration and Trigonometry.
All types of solved examples on different topics are explained along with the step-by-step solutions so that students can attempt how to solve these problems quickly in your own convenient methods. 10th grade math practice sheets are presented in such a way that students can learn math while practicing math problems.
Keeping in mind the mental level of student in tenth grade, every efforts has been made to introduce new concepts in a simple and easy language, so that the students can understand the problems easily.','https://t4.ftcdn.net/jpg/02/38/56/47/360_F_238564757_L7gsykjvZe2Sdtnyfa0mHd0fObHU4f5G.jpg','equational'),
(5,2,'1992-02-10','11 and 12 Grade Math','11 and 12 grade math practice the topics are divided into three parts. Part one deals with elementary Algebra, part two provides a basic course in trigonometry and part three considers elements of two dimensional Co-ordinate Geometry including solid geometry and mensuration.
Each topic that are covered in 11 and 12 grade math, concepts is enlightened with a summarization which includes important theorems, results and formula are discussed in each topic with numerous types of solved examples. Sufficient number of problems have been inserted in grade 11 and 12 practice math task worksheets beginning with easier followed gradually by harder ones.
 It is expected that students should be acquainted with the basic 11 and 12 grade math concepts relating to each topic and should be able to apply those to simple elementary problems, preferably numerical.','https://t4.ftcdn.net/jpg/02/38/56/47/360_F_238564757_L7gsykjvZe2Sdtnyfa0mHd0fObHU4f5G.jpg','equational'),
 (6,8,'1990-12-03','Drawing','Not all people are creative in sketching or drawing things or objects they would like to see for real. Are you an aspiring artist or a person who wants to draw for fun? Well, which one you are, you might be wondering what to bring next? This "What should I draw quiz" will help you find out what would be good for you to draw. (31 kB)'),
 (7,7,'1982-4-01','French Product Quizzes','French quiz based on Learn Language Now language software from Transparent Language. Free language resources to support your French learning.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh7-4sALYRyJApuyoauOCOeorYfAl7ydec5ZnjZJhxD-V6sTzwTa3RC5ryzLZRQ2Pwc7k&usqp=CAU','language'),
 (8,1,'1778-02-21','eQuiz.Me','Free English quiz tests :white_check_mark: for ESL learners to do online. Test your English grammar and vocabulary FREE. With answers. For ESL learners and teachers.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShLoc6OI7DR5QA0lVUECkOJKSRMvqWTtIYaQ&usqp=CAU','language')


INSERT INTO questions (id, quiz_id, questions)
 VALUES (1,1,'1) What is the full form of SQL?','2) Which of the following is not a valid SQL type?','3) Which of the following is not a DDL command?','4) Which of the following are TCL commands?')
 (2,2,'1) What is the full form of SQL?','2) Which of the following is not a valid SQL type?','3) Which of the following is not a DDL command?','4) Which of the following are TCL commands?','5) Which statement is used to delete all rows in a table without having the action logged?'),
(3,3,'Question 1.The correct description for boiling is', 'Question 2.The correct description for simmering is', 'Question 3.The correct description for poaching is', 'Questin 4.Braising requires the food to be'),
(4,4,'Q1.Which numbers are factors of 20? Select all that apply.','Q2.Which number is a factor of 15?','Q3. Besides 4 and 1, what is one factor of 4?'),
(5,5,'Q1. Is g(x) the inverse function of f(x)?f(x)=x–7  g(x)=x+7', 'Q2.s f(x) the inverse function f g(x)?  f(x)=x–9   g(x)=x+9'),
(6,6,'Q1. The lines that describe the outer edges of objects and figures are called _____.', 'Q2.2. A drawing technique for shading using parallel lines that cross over other parallel lines,', 'Q3.  If a sheet of paper is vertical, which position is it in?' ),
(7,7,'Q1. "How are you?" in French', 'Q2. How to answer "how are you?', 'Q3. "What is your name?" in French'),
(8,8,'Q1. The students in our college are _________ in other colleges.', 'Q2. If she had had budget, she ________ it before.', 'Q3. Indonesia is a country ________ thousands of small and big islands, and it is ________ most dispersed country in the world.')

INSERT INTO answers(id,question_id,value, is_correct, answers)
VALUES ('Answers : - 
    a)Structured Query List
    b)Structure Query Language
    c)Sample Query Language
    d)None of these.
','a) FLOAT
    b) NUMERIC
   c) DECIMAL
   d) CHARACTER
','
   a) TRUNCATE
   b) ALTER
   c) CREATE
   d) UPDATE
',
'
    a)COMMIT and ROLLBACK
   b) UPDATE and TRUNCATE
   c) SELECT and INSERT
   d) GRANT and REVOKE
')
('Answers : - 
    a)Structured Query List
    b)Structure Query Language
    c)Sample Query Language
    d)None of these.
','a) FLOAT
    b) NUMERIC
   c) DECIMAL
   d) CHARACTER
','
   a) TRUNCATE
   b) ALTER
   c) CREATE
   d) UPDATE
',
'
    a)COMMIT and ROLLBACK
   b) UPDATE and TRUNCATE
   c) SELECT and INSERT
   d) GRANT and REVOKE
')
('Answers : -A. 
Small bubbles breaking at the surface 98 degrees celsius.
B. 
Large bubbles breaking at the surface 100 degrees celsius.
C. 
No bubbles 95 degrees celsius.')
('Answers : - A. 
Small bubbles breaking at the surface 98 degrees celsius.
B. 
Large bubbles breaking at the surface 100 degrees celsius.
C. 
No bubbles 95 degrees celsius.')
('Answers : - A.. 
Small bubbles breaking at the surface 98 degrees celsius.
B. 
Large bubbles breaking at the surface 100 degrees celsius.
C. 
No bubbles 87 to 95 degrees celsius.')
('ANSWERS: - A. 
Half-covered with liquid, covered and cooked in the oven.
B. 
Completely covered with liquid, covered and cooked in the oven.
C. 
Half-covered with liquid, covered and cooked on the stove.')
('Answers:- a) 1, 2, 4, 5, 10, 20,
 b) 1, 3, 5, and 15,
 c) 5,0, 3,4')
 ('Answers:- a) TRUE, b) FALSE')
 ('Answers:-a) vertical lines

b) outlines

c) contour lines

d) horizon lines')

('Answers:- a)cross hatching

b) rubbing

c) hatching

d) blending')

('Answers:- a)landscape

b) portrait

c) left

d) bottom ')

('Answers:-a) Comment allez-vous ? (most common)
b) Comment ça va ?	 
c) Ça va ?	How are you? ')

('Answers:- a)Je vais bien, et vous ?	I’m doing well, and you?
b) Bien, merci. Et vous?	Fine, thanks. and you?
c) Bien, merci	Good, thanks
d) Pas trop mal	Not bad
e) Comme-ci, comme-ca	so-so')

('Answers:- a) Comment vous appelez-vous ?,
b) Comment tu t’appelles ? (informal)')

('Answers:- (A) smarter
(B) smarter than
(C) smarter than those
(D) more smarter than')

('Answers:- (A) would purchase
(B) would purchased
(C) would have purchase
(D) would have purchased')
('Answers:- (A) made of, a
(B) made of, the
(C) made up of, a
(D) made up of, the')




INSERT INTO attempts( id,attempt_on,quiz_id, user_id,  score)
VALUES(1,'1997-02-11',1,2,68% ),
(2,'1992-01-01',3,2,70%),
(2,'1778-02-03',2,4,60%),
(1,'1834-01-01',)