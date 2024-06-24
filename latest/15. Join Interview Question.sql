select * from t1;
select * from t2;

/* Scenario 1. When all the records are same in both the tables */
insert into t1 values (1);
insert into t1 values (1);

insert into t2 values (1);
insert into t2 values (1);
insert into t2 values (1);

/* Inner Join */
select * from t1 Inner Join t2 on t1.id1 = t2.id2;

select * from t1 Left Join t2 on t1.id1 = t2.id2;

select * from t1 Right Join t2 on t1.id1 = t2.id2;

/* Full outer join not supported in Mysql 
select * from t1 full outer Join t2 on t1.id1 = t2.id2;
*/

/* Adding more values to the table*/
insert into t1 values (2);
insert into t2 values (3);


/* Adding more values to the table*/
insert into t1 values (2);
insert into t1 values (4);
insert into t2 values (2);
insert into t2 values (2);

/* Adding more values to the table*/
insert into t1 values (null);
insert into t2 values (null);

