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


SELECT * from students;