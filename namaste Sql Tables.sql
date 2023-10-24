use namastesql;

/*Emp Table*/

create table emp(
emp_id int,
emp_name varchar(20),
department_id int,
salary int,
manager_id int,
emp_age int);

insert into emp
values
(1, 'Ankit', 100,10000, 4, 39);
insert into emp
values (2, 'Mohit', 100, 15000, 5, 48);
insert into emp
values (3, 'Vikas', 100, 10000,4,37);
insert into emp
values (4, 'Rohit', 100, 5000, 2, 16);
insert into emp
values (5, 'Mudit', 200, 12000, 6,55);
insert into emp
values (6, 'Agam', 200, 12000,2, 14);
insert into emp
values (7, 'Sanjay', 200, 9000, 2,13);
insert into emp
values (8, 'Ashish', 200,5000,2,12);
insert into emp
values (9, 'Mukesh',300,6000,6,51);
insert into emp
values (10, 'Rakesh',300,7000,6,50);
insert into emp
values(1, 'Aman', 600,10000, 4, 39);


/*Orders table*/
create table orders(
 customer_name char(10),
 order_date date,
 order_amount int,
 customer_gender char(6)
 );
 
 insert into orders values('Shilpa','2020-01-01',10000,'Male');
 insert into orders values('Rahul','2020-01-02',12000,'Female');
 insert into orders values('Shilpa','2020-01-02',12000,'Male');
 insert into orders values('Rohit','2020-01-03',15000,'Female');
 insert into orders values('Shilpa','2020-01-03',14000,'Male');
 
 select * from orders;
 
 /*Department Table*/
create table department(
 dept_id int,
 dept_name varchar(10)
 );
 
insert into department values(100,'Analytics');
insert into department values(300,'IT');

select * from department;

/*Emp manager table*/
create table emp_manager(emp_id int,emp_name varchar(50),salary int(20),manager_id int(10));
insert into emp_manager values(	1	,'Ankit',	10000	,4	);
insert into emp_manager values(	2	,'Mohit',	15000	,5	);
insert into emp_manager values(	3	,'Vikas',	10000	,4	);
insert into emp_manager values(	4	,'Rohit',	5000	,2	);
insert into emp_manager values(	5	,'Mudit',	12000	,6	);
insert into emp_manager values(	6	,'Agam',	12000	,2	);
insert into emp_manager values(	7	,'Sanjay',	9000	,2	);
insert into emp_manager values(	8	,'Ashish',	5000	,2	);