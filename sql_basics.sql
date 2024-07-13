

--SQL BASICS 😋

--drop table customer;
--create table customer(customer_name varchar(20),customer_number bigint);
--alter table customer add customer_Address varchar(80);
--alter table customer drop column customer_Address;
--alter table customer alter column customer_number bigint;
--insert into customer (customer_name, customer_number) values ('pratheek', 87902892893);
--delete from customer where customer_name='pratheek';
--select*from customer;


--CONSTRAINTS
-- create table customers(
--     customer_id int auto_increment, 
--     customer_name varchar(20),
--     primary key (customer_id));
-- insert into customers values(1,'pratheek');
-- insert into customers(customer_name) values('sathvik');
-- select * from customers;
-- alter table customers modify column customer_id int NOT NULL auto_increment;
-- alter table customers modify column customer_name varchar(20) DEFAULT 'not specified';

-- alter table customers modify column customer_name varchar(20) NOT NULL, add column phone bigint;

-- select * from customers;

-- insert into customers (phone) values (9989373738); --error because customer_name NOT NULL

-- insert into customers (customer_name,phone) values ('Rahul',9989373738);


--UPDATE / DELETE

-- update customers set customer_name = 'banty' where customer_id = 2;

-- update customers set customer_name = 'loly', phone = 9292929292 where customer_name = "Rahul" and phone = 9989373738;

-- delete from customers where customer_id = 1;


--SELECT/ORDER BY


-- select customer_name from customers order by customer_id asc;

-- select customer_id, phone from customers where customer_name IN ('banty','sathvik');

-- select customer_name from customers order by customer_id,phone asc;

-- alter table customers add email_id varchar(20);

-- alter table customers modify email_id varchar(20) DEFAULT 'xyz@gmail.com';

-- update customers set email_id = '1@gmail.com' WHERE customer_id = 2;

-- select customer_name from customers order by customer_id asc limit;

-- select customer_name from customers where customer_id <> 2

-- select * from customers where customer_name IN ('banty');

--SYMBOL
-- <>(not) <= >= = AND,OR

-- select firstname AS primaryname, lastname AS surname (AS Returns name given under as)

--select  distinct first_name from employee;




--WILDCARDS
--% = any values _ = one character

-- select client_name,branch_id from client where client_name LIKE '%ex';

-- select count(sex), sex from employee group by sex;

-- select sum(salary) as total, sex from employee group by sex;

-- select sum(salary) from employee where sex = 'M';

--UNIONS (Commonly used if we want data of columns in a single set of columns vertically) (It removes duplicates also) if you want to include duplicate use (UNION ALL) (It should have same number of column and data types)
-- select sum(salary) from employee union select mgr_id from branch where branch_name = 'corporate';

-- select first_name from employee union all select client_name from client;


--JOINS

-- Types
-- Inner join(a normal join) (returns common in both the table)
-- Left Join (It displays all data of left column but not the right  column) left means after from the table is left
-- Right Join (It displays all data of right column but not the left  column) after JOIN statement that column name is RIGHT
-- Full outer join (Joins both left and right)(showing both A table and B without its matching or not)

-- select employee.first_name, client.client_name from employee join client  on employee.branch_id = client.branch_id;

-- select employee.first_name, employee.emp_id, branch.branch_name from employee join branch on employee.emp_id = branch.mgr_id;

-- select employee.first_name, employee.emp_id, branch.branch_name from employee left join branch on employee.emp_id = branch.mgr_id;


--INNER OR NESTED QUERY

--select first_name from employee where employee.emp_id in (select works_with.emp_id from works_with where works_with.total_sales > 30000);

-- on delete set null (when deleting it will set related data to null)
-- on delete cascade (when deleting deletes full row value) 


--TRIGGERS

-- create table my_triggy (message varchar(60));
-- DELIMITER $$
-- create trigger my_trigger before INSERT on employee for each row begin insert into my_triggy values('inserted sucecess');
-- END $$
-- DELIMITER ;
-- select * from my_triggy;



--Repeated
-- create table customers(
--     customer_id int auto_increment, 
--     customer_name varchar(20),
--     primary key (customer_id));

-- insert into customers values(1,'pratheek');
-- insert into customers(customer_name) values('sathvik');
-- select * from customers;
-- alter table customers modify column customer_id int NOT NULL auto_increment;

-- alter table customers modify column customer_name varchar(20) NOT NULL, add column phone bigint;

-- select * from customers;

-- insert into customers (phone) values (9989373738); --error because customer_name NOT NULL

-- insert into customers (customer_name,phone) values ('Rahul',9989373738);

-- update customers set customer_name = 'banty' where customer_id = 2;

-- update customers set customer_name = 'loly', phone = 9292929292 where customer_name = "Rahul" and phone = 9989373738;

-- delete from customers where customer_id = 1;

-- alter table customers modify column customer_name varchar(20) DEFAULT 'not specified';

-- update customers set phone = 090909 where customer_id =2;

-- select customer_name from customers order by customer_id asc;

-- select customer_id, phone from customers where customer_name IN ('banty','sathvik');

-- select customer_name from customers order by customer_id,phone asc;

-- alter table customers add email_id varchar(20);

-- alter table customers modify email_id varchar(20) DEFAULT 'xyz@gmail.com';

-- update customers set email_id = '1@gmail.com' WHERE customer_id = 2;

-- --select customer_name from customers order by customer_id asc limit 2;

-- --select customer_name from customers where customer_id <> 2

-- select * from customers where customer_name IN ('banty');
