Part A :
create database ankita_intern_db;
 use ankita_intern_db;
create table employees (emp_id int primary key, emp_name varchar(100), dept varchar(50), salary decimal(10,2), city varchar(50),joining_date date, status varchar(20));                                                    
desc employees;
 show tables;

Part B :

insert into employees values (101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active');
insert into employees values (102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active');
insert into employees values (103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active');
insert into employees values (104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active');
insert into employees values (105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive');
insert into employees values (106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');

Part C :

select * from employees;
select emp_name from employees;
select emp_name, salary from employees;
select emp_name, dept, city from employees;
select * from employees where city = 'Pune';
select * from employees where city = 'Mumbai';
select * from employees where dept = 'Development';
select * from employees where dept = 'Testing';
select * from employees where status = 'Active';
select * from employees where status = 'Inactive';
select * from employees where emp_id = 103;
select * from employees where emp_name = 'Priya Sharma';
select * from employees where salary > 40000;
select * from employees where salary < 40000;
select * from employees where salary = 35000;
select * from employees where salary >= 42000;
select * from employees where city = 'Pune' and status = 'Active';
select * from employees where dept = 'Development' and salary > 45000;
select * from employees where city = 'Pune' or city = 'Mumbai';

Part D :

update employees set salary = 48000 where emp_name = 'Rahul Patil';
update employees set status = 'Active' where emp_name = 'Rohan Deshmukh';
update employees set city = 'Pune' where emp_name = 'Sneha Kulkarni';
update employees set dept = 'Development' where emp_name = 'Priya Sharma';
update employees set salary = 45000 where emp_id = 106;
update employees set salary = salary + 3000 where emp_id = 103;
update employees set salary = salary + 2000 where dept = 'Testing';
update employees set city = 'Mumbai Branch' where city = 'Mumbai';

Part E :

delete from employees where emp_id = 105;
delete from employees where emp_name = 'Rohan Deshmukh';
delete from employees where status = 'Inactive';
delete from employees where salary < 30000;
delete from employees where emp_id = 104;

Part F :

alter table employees add column email varchar(100);
alter table employees add column mobile varchar(15);
alter table employees modify column city varchar(100);
alter table employees rename column emp_name to name;
alter table employees drop column mobile;
alter table employees add column experience int;
update employees set experience = 2 where emp_id = 101;

Part G :

create table departments (dept_id int primary key, dept_name varchar(100), location varchar(100));
insert into departments values (1, 'Development', 'Pune'), (2, 'Testing', 'Mumbai'), (3, 'HR', 'Nashik');
select * from departments;
update departments set location = 'Hyderabad' where dept_id = 1;
delete from departments where dept_id = 3;
rename table departments to company_departments;
desc company_departments;
truncate table company_departments;
drop table company_departments;
show tables;



