drop TABLE students;

create table students(
student_id INT AUTO_INCREMENT,
student_fname varchar(30) NOT NULL,
student_lname varchar(30) NOT NULL,
student_mname varchar(30),
student_email varchar(30) NOT NULL,
student_phone varchar(15) NOT NULL,
student_alternate_phone varchar(15),
enrollment_date TIMESTAMP NOT NULL DEFAULT current_timestamp ,
years_of_exp INT NOT NULL,
student_company varchar(30),
batch_date varchar(30) NOT NULL,
source_of_joining varchar(30) NOT NULL,
location varchar(30) NOT NULL,
PRIMARY KEY(student_id),
UNIQUE KEY(student_email)
);

ALTER TABLE students ADD COLUMN selected_course VARCHAR(50);

insert into students(student_fname,student_lname,student_email,student_phone,years_of_exp,student_company,batch_date,source_of_joining,location) values('rohit','sharma','rohit@gmail.com','9191919191',6,'walmart','05-02-2021','linkedin','bangalore');

insert into students (student_fname,student_lname,student_email,student_phone, selected_course,years_of_exp,
batch_date,source_of_joining,location) values
('shikhar','dhawan','shikhar@gmail.com','9393939393',3,12,'19-02-2021','google','bangalore');

insert into students (student_fname,student_lname,student_email,student_phone,years_of_exp,student_company,
batch_date,source_of_joining,location) values
('rahul','dravid','rahul@gmail.com','9494949494',8,'walmart','19-02-2021','quora','chennai'),
('virat','kohli','virat@gmail.com','9292929292',3,'flipkart','5-02-2021','linkedin','hyderabad'),
('kapil','dev','kapil@gmail.com','9291292292',15,'microsoft','5-02-2021','friend','pune');

insert into students (student_fname,student_lname,student_email,student_phone,years_of_exp,student_company,
batch_date,source_of_joining,location) values
('brian','lara','brian@gmail.com','9291297292',18,'tcs','5-02-2021','youtube','pune'),
('carl','hooper','carl@gmail.com','9291297392',20,'wipro','19-02-2021','youtube','pune'),
('saurabh','ganguly','saurabh@gmail.com','9291297492',14,'wipro','19-02-2021','google','chennai');

SELECT * from students;
