--To display top 5 elements then use "TOP"
--select TOP 5 * from employee;
--DISTINCT
--select DISTINCT(emp_id) from emplyee;

--IF YOU ARE IN DIFFERENT DATABASE BUT YOU WANT TABLE OF ANOTHER DATABASE YOU CAN ACCESS ANOTHER TABLE USING
-- ex: you are in MASTER but you need to access db MYDATA table minedata
-- select * from MYDATA.employeetable;

--NULL OR NOT NULL
--select firstname from employee where firstname Is null;

-- --IN
-- select firstname from employee where firstname IN ('Pratheek','Pamm'); (//Comonly used instead of multiple "=")

-- ORDER BY can also used in table numeric count 

-- ex 5 columns (empid, name, age, address, email)
-- select * from employee order by 4 ASC, 5 DESC;   //based on first 4 column and 5th desc 

--CASE STATEMENT

-- select first_name,last_name,
-- case when salary > 75000 
-- then 'Good performance' 
-- else 'try best' End as 'comment' from employee;
-- select first_name,last_name,case when salary > 75000 then (salary+salary) else 'sorry no increment' End as 'comment' from employee;


--HAVING CLAUSE (used after the group by statement but before order by statement)

-- select count(first_name) from employee group by first_name having first_name = 0; (we cant use where count>1 so use having)
-- select count(salary), salary from employee group by salary having salary > 12000;


--PARTITION (similar to group by but lists all columns without shorting likr group by)
-- SELECT 
--     sale_id, 
--     product_id, 
--     sale_amount,
--     SUM(sale_amount) OVER (PARTITION BY product_id ORDER BY sale_id) AS running_total
-- FROM 
--     sales;

-- CTE (Common Table Expression) OR "WITH STATEMENT"
-- with my_new as (select * from employee); 
-- (The select statement should be directly under query)


--CREATE TABLE USING ANOTHER TABLE STRUCTURE
-- create table temp_table like employee;
-- select * from temp_table;

--INSERT TO TABLE FROM ANOTHER TABLE DATA 
-- insert into temp_table select * from employee;


--TEMP TABLES (created using "#")
-- create table #temptable();
-- insert into #temptable select * from employee;
--insert into #temptable select * from temp_table;
-- select * from #temptable

--TRIM
-- select id, trim (id) from just_for_trim;
-- select id, ltrim (id) from just_for_trim;
-- select id, rtrim (id) from just_for_trim;

--REPLACE 
-- select name, replace(name, '-fired', '') from just_for_trim;

--SUBSTRING
-- select SUBSTRING (name, 1,2) from just_for_trim;

-- #$(here it checks first 3 values from both table and checks they are same or not using their phone number is same)#$
-- select substring (name, 1,3), 
-- substring (first_name,1,3), 
-- case 
-- when employee.phone_number = just_for_trim.phone_number 
-- then 'yes they are same' 
-- else 'they are not' 
-- end 
-- from just_for_trim join employee on 
-- substring(just_for_trim.name,1,3) = substring(employee.first_name,1,3);

--UPPER AND LOWER
-- select upper(first_name) from employee;
--select lower(first_name) from employee;

--PROCEDURE 
-- CREATE PROCEDURE my_procedure()
-- BEGIN
--     SELECT * FROM employee;
-- END;

-- To EXECUTE (Mysql version use call instead of exec)
-- call my_procedure;

--PROMPT TO GET USING PARAMETER --
-- create procedure new (IN emp varchar(20))
-- begin
-- SELECT salary FROM employee WHERE first_name = emp LIMIT 1;
-- end;

--PASSING VALUE TO EXECUTE--
--call new ('pratheek')

-- Altering of procedure works in 15 above versions mysql