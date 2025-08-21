create database products;
use products;
create table warehouse_product(
product_id int primary key,
product_name varchar(30) not null,
product_mfd date check (product_mfd between '2025-01-01' and '2025-12-30'),
product_exp date check (product_exp between '2027-01-01' and '2027-12-30'),
p_catogory varchar(30) check (p_catogory in ('detergents','fooditems','cloths','dairy')),
p_company varchar(30) not null,
p_price int 
);
drop table warehouse_product;
select * from warehouse_product;

insert into warehouse_product values
(1,'Surf Excel','2025-01-15','2027-05-10','detergents','HUL',250),
(2,'Ariel','2025-03-10','2027-08-12','detergents','P&G',230),
(3,'Milk Packet','2025-02-05','2027-06-15','dairy','Nandini',50),
(4,'Cheese','2025-04-20','2027-07-25','dairy','Amul',180),
(5,'Bread','2025-05-01','2027-08-30','fooditems','Britannia',40),
(6,'Biscuits','2025-06-12','2027-09-20','fooditems','Parle',60),
(7,'T-shirt','2025-03-18','2027-10-15','cloths','Raymond',799),
(8,'Jeans','2025-07-25','2027-11-22','cloths','Levis',1599),
(9,'Butter','2025-08-14','2027-12-10','dairy','MotherDairy',200),
(10,'Rice Bag','2025-09-05','2027-12-25','fooditems','IndiaGate',1200);



create table dmart_product(
d_product_id int primary key,
product_name varchar(30) not null,
product_mfd date check (product_mfd between '2025-01-01' and '2025-12-30'),
product_exp date check (product_exp between '2027-01-01' and '2027-12-30'),
p_catogory varchar(30) check (p_catogory in ('detergents','fooditems','cloths','dairy')),
p_company varchar(30) not null,
p_price int,
product_id int,
foreign key (product_id) references warehouse_product(product_id)
);


select * from dmart_product;
insert into dmart_product values
(101,'Ariel','2025-03-10','2027-08-12','detergents','P&G',240,2),
(102,'Milk Packet','2025-02-05','2027-06-15','dairy','Nandini',55,3),
(103,'Cheese','2025-04-20','2027-07-25','dairy','Amul',190,4),
(104,'Bread','2025-05-01','2027-08-30','fooditems','Britannia',45,5),
(105,'Biscuits','2025-06-12','2027-09-20','fooditems','Parle',65,6),
(106,'T-shirt','2025-03-18','2027-10-15','cloths','Raymond',820,7);
truncate dmart_product;
select * from warehouse_product w inner join dmart_product d on w.product_name = d.product_name;
select w.product_name,w.p_company,d.product_name,d.p_company from warehouse_product w inner join dmart_product d on w.product_name = d.product_name;
select w.product_name,w.p_company,d.d_product_id,d.p_price from warehouse_product w inner join dmart_product d on w.product_name = d.product_name;
select * from warehouse_product w left join dmart_product d on w.product_name = d.product_name;
select w.product_name,w.p_catogory,w.p_price,d.product_name,d.p_catogory,d.p_price from warehouse_product w left join dmart_product d on w.product_name = d.product_name;
select * from warehouse_product w right join dmart_product d on w.product_name = d.product_name;
select w.product_name,w.p_catogory,w.p_price,d.product_name,d.p_catogory,d.p_price from warehouse_product w right join dmart_product d on w.product_name = d.product_name;
