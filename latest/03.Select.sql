/*
CREATE TABLE employee (
    firstName VARCHAR(25),
    middleName VARCHAR(25),
    lastName VARCHAR(25),
    age INT,
    salary INT,
    location VARCHAR(30)
);

desc employee;
*/

INSERT INTO employee(firstName,middleName,lastName,age,salary,location) 
VALUES 
('Mayank','Chandra','Birkhani','24','25000','Uttarakhand'),
('Harsh','kumar','Singh','25','35000','Delhi');

select * from employee;