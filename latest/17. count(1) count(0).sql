-- Difference between count(*), count(0), count(1), count(-1), count(col), count(distinct col)

use namastesql;

select * from emp;

select count(*) FROM emp;		-- It will return all the rows including null
select count(1) FROM emp;		-- It will return all the rows including null
select count(0) FROM emp;		-- It will return all the rows including null
select count('col') FROM emp;	-- It will return all the rows including null

select count(department_id) from emp;				-- It will return all the rows excluding null
select count(distinct department_id) from emp;		-- It will return count of distinct values from a column excluding null.