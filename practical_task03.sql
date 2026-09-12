Part A — Database & Table Creation

create database ankita_banking_db;
use ankita_banking_db;
create table accounts (acc_id int primary key, acc_number varchar(20), cust_name varchar(100), acc_type varchar(30), branch varchar(50), city varchar(50), balance decimal(12,2), credit_score int, status varchar(20), opened_date date);
desc accounts;
show tables;

Part B — INSERT Operations

insert into accounts values (1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15');
insert into accounts values (1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20');
insert into accounts values (1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');
insert into accounts values (1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05');
insert into accounts values (1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18');
insert into accounts values (1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');

Part C — DQL / SELECT Queries

select * from accounts;
select cust_name, acc_number from accounts;
select cust_name, acc_type, balance, status from accounts;
select * from accounts where acc_type = 'Savings';
select * from accounts where city = 'Pune';
select * from accounts where balance > 50000;
select * from accounts where balance <= 50000;
select * from accounts where balance between 50000 and 200000;
select * from accounts where credit_score >= 750;
select * from accounts where status = 'Active';
select * from accounts where status = 'Dormant' or status = 'Closed';
select * from accounts where city = 'Pune' and status = 'Active';
select * from accounts where city = 'Mumbai' or city = 'Nashik';
select * from accounts where acc_type = 'Savings' or acc_type = 'Salary';
select * from accounts where balance not between 25000 and 100000;
select * from accounts where cust_name like 'A%';
select * from accounts where cust_name like '%a';
select * from accounts where branch like '%Road%';
select * from accounts order by balance desc limit 3;
select * from accounts limit 5;
select * from accounts limit 3, 3;
select * from accounts where city = 'Pune' and status = 'Active' and acc_type = 'Savings' and balance > 50000;
select * from accounts where city in ('Pune', 'Mumbai', 'Nashik') and credit_score >= 750;
select * from accounts where balance > 100000 and credit_score >= 800;
select * from accounts where balance between 50000 and 150000 or credit_score > 800;
select * from accounts where status = 'Active' and acc_type != 'Current';
select * from accounts where cust_name like '%ar%';

Part D — UPDATE Operations

update accounts set balance = 95000 where cust_name = 'Aarav Sharma';
update accounts set status = 'Active' where cust_name = 'Vikram Deshmukh';
update accounts set credit_score = 755 where cust_name = 'Rohan Joshi';
update accounts set branch = 'College Road' where cust_name = 'Sneha Kulkarni';
update accounts set acc_type = 'Premium Current' where cust_name = 'Priya Patil';
update accounts set balance = balance + 25000 where acc_id = 1006;
update accounts set balance = balance + 5000 where acc_type = 'Savings';
update accounts set city = 'Pune City' where city = 'Pune';
update accounts set credit_score = credit_score + 10 where status = 'Active' and credit_score < 750;
update accounts set status = 'Dormant' where balance < 20000;

Part E — DELETE Operations

delete from accounts where acc_id = 1005;
delete from accounts where acc_number = 'ACC10004';
delete from accounts where status = 'Closed';
delete from accounts where balance < 10000 or credit_score < 600;
delete from accounts where city = 'Pune' and status = 'Dormant';

Part F — ALTER TABLE / DDL

alter table accounts add column email varchar(100);
alter table accounts add column mobile varchar(15);
alter table accounts modify column branch varchar(100);
alter table accounts rename column cust_name to name;
alter table accounts drop column mobile;

Part G — Table-Level DDL

 1) alter table accounts add column acc_category varchar(30);
 2) update accounts set acc_category = 'Premium' where acc_id = 1001;
 3) update accounts set acc_category = 'Regular' where acc_id = 1002;
 4) rename table accounts to bank_accounts;
 1) desc bank_accounts;
 2) truncate table bank_accounts;
 3) drop table bank_accounts;

