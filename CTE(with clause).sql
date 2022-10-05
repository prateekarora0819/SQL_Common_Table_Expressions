
--COMMON TABLE EXPRESSION (CTEs) ADVANCE TOPIC
--==============================================
-- CTE is required to simplify the complex queries.
-- it improves the readability of a query.
-- it defines a temporary result-set that you can refer in select, insert, update, delete statements follows the CTE.
-- CTE can improve the performance but not always.

select * from EMPLOYEES
select * from Company_and_Courses

--SUB-Query
------------
select avg(salary) as avg_salary from 
	(
	select salary from EMPLOYEES
	) as x

--CTEs
---------
with average_salary_age(avg_sal, avg_age) as 
	(select avg(salary), avg(age) from EMPLOYEES)
select * from 
EMPLOYEES e, average_salary_age av
where e.SALARY > av.avg_sal 
	and
	  e.age > av.avg_age











