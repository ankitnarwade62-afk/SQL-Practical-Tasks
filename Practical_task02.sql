Part A  —  Database & Table Creation

create database ankita_ecommerce_db;
use ankita_ecommerce_db;
create table products (pro_id int primary key, pro_name varchar(100), category varchar(50), brand varchar(50), price decimal(10,2), quantity int, city varchar(50), status varchar(20));
desc products;
show tables;


Part B — INSERT Operations

insert into products values (201, 'Vivo V40', 'Mobile', 'Vivo', 32000, 15, 'Pune', 'Available');
insert into products values (202, 'iPhone 16', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');
insert into products values (203, 'OnePlus Nord 4', 'Mobile', 'OnePlus', 28000, 20, 'Pune', 'Available');
insert into products values (204, 'HP Pavilion 15', 'Laptop', 'HP', 58000, 6, 'Nashik', 'Available');
insert into products values (205, 'Lenovo IdeaPad 5', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');
insert into products values (206, 'Noise Watch Pro', 'Watch', 'Noise', 22000, 4, 'Pune', 'Out of Stock');
insert into products values (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');
insert into products values (208, 'Samsung Galaxy Tab', 'Tablet', 'Samsung', 24000, 18, 'Pune', 'Available');
insert into products values (209, 'OnePlus Pad 2', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');
insert into products values (210, 'JBL Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');


Part C — Basic SELECT & Operator Practice

select * from products;
select pro_name from products;
select pro_name, price from products;
select pro_name, category, brand, price from products;
select * from products where city = 'Pune';
select * from products where city = 'Mumbai';
select * from products where category = 'Mobile';
select * from products where category = 'Laptop';
select * from products where price > 30000;
select * from products where price < 30000;
select * from products where price = 35000;
select * from products where price >= 45000;
select * from products where price <= 30000;
select * from products where quantity > 10;
select * from products where quantity < 10;

Part D — Logical Operators

select * from products where city = 'Pune' and category = 'Mobile';
select * from products where city = 'Mumbai' and status = 'Available';
select * from products where price > 30000 and quantity > 5;
select * from products where price >= 30000 and price <= 60000;
select * from products where city = 'Pune' or city = 'Mumbai';
select * from products where category = 'Mobile' or category = 'Laptop';
select * from products where quantity < 10 or price > 50000;
select * from products where category = 'Mobile' and price > 30000;
select * from products where brand = 'Samsung' or brand = 'Apple';
select * from products where city = 'Pune' and status = 'Available' and quantity > 10;

Part E — Slightly Higher Operator Logic

select * from products where price between 25000 and 50000;
select * from products where quantity between 5 and 15;
select * from products where category in ('Mobile', 'Laptop', 'Tablet');
select * from products where city in ('Pune', 'Mumbai');
select * from products where brand != 'Samsung';
select * from products where status != 'Out of Stock';
select * from products where price != 30000;
select * from products where pro_name like 'Galaxy%';
select * from products where pro_name like '%Pad%';
select * from products where category = 'Mobile' and (price > 30000 or quantity > 15);

Part F — UPDATE Operations
update products set price = 34000 where pro_name = 'Galaxy M55';
update products set quantity = 12 where pro_name = 'iPhone 15';
update products set status = 'Available' where pro_name = 'Galaxy Watch 6';
update products set price = price + 2000 where category = 'Mobile';
update products set quantity = quantity + 5 where city = 'Pune';
update products set status = 'Out of Stock' where quantity < 5;

Part G — DELETE Operations

delete from products where pro_id = 210;
delete from products where price < 8000;
delete from products where status = 'Out of Stock' and quantity < 5;
delete from products where category = 'Tablet' and price > 30000;