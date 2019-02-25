drop database if exists bamazon_db;
create database bamazon_db;
use bamazon_db;

create table products (
item_id int auto_increment not null,
product_name varchar (100) not null,
department_name varchar (50) not null,
price decimal (10,2),
stock_quantity int (5),
primary key (item_id)
);

insert into products (product_name, department_name, price, stock_quantity)
values ("Dell Laptop", "Electronics", 350, 45);

insert into products (product_name, department_name, price, stock_quantity)
values ("MacBook Air", "Electronics", 1350, 20);

insert into products (product_name, department_name, price, stock_quantity)
values ("XBox One", "Electronics", 399.99, 450);

insert into products (product_name, department_name, price, stock_quantity)
values ("The Holy Grail", "Legendary Artifacts", 99999999.99, 0);

insert into products (product_name, department_name, price, stock_quantity)
values ("Samsung Galaxy S9", "Mobile Devices", 699.99, 100);

insert into products (product_name, department_name, price, stock_quantity)
values ("Skullcandy Bluetooth Headphones", "Electronics", 19.99, 450);

insert into products (product_name, department_name, price, stock_quantity)
values ("The Mega Cigar", "Tobacco", 19.99, 2000);

insert into products (product_name, department_name, price, stock_quantity)
values ("LG 55 inch 4K TV", "Electronics", 599.99, 1000);

insert into products (product_name, department_name, price, stock_quantity)
values ("Firestone 15 inch tires-4", "Automotive", 599.99, 10);

insert into products (product_name, department_name, price, stock_quantity)
values ("A Magic Toaster", "Kitchen", 3999999.99, 1);

select * from products;