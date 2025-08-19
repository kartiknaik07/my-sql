use dmart;
create table product(
    product_id int primary key,             
    product_code int unique not null,        
    product_name varchar(50) not null,       
    mfg_date date not null,                  
    exp_date date,                       
    price double check(price > 0),           
    stock int default 0  
);
create table customer (
	customer_id int primary key,             
    customer_name varchar(50) not null,      
    phone bigint unique, 
    city varchar(20),
    gender char(1),                          
    purchase_date date not null,             
    quantity int check(quantity > 0),       
    product_id int,                          
    foreign key (product_id) references product(product_id)
);
alter table customer add city varchar(50);
update customer set city='Bangalore' where customer_id=1;
update customer set city='Delhi' where customer_id=2;
update customer set city='Mumbai' where customer_id=3;
update customer set city='Bangalore' where customer_id=4;
update customer set city='Hyderabad' where customer_id=5;
update customer set city='Delhi' where customer_id=6;
update customer set city='Kolkata' where customer_id=7;
update customer set city='Bangalore' where customer_id=8;
update customer set city='Chennai' where customer_id=9;
update customer set city='Delhi' where customer_id=10;


insert into product (product_id, product_code, product_name, mfg_date, exp_date, price, stock) values
(1, 101, 'Rice Bag 10kg', '2025-01-01', '2026-01-01', 550.00, 120),
(2, 102, 'Wheat Flour 5kg', '2025-02-10', '2026-02-10', 280.00, 80),
(3, 103, 'Sugar 1kg', '2025-01-15', '2026-01-15', 45.00, 200),
(4, 104, 'Milk 1L', '2025-08-10', '2025-08-20', 50.00, 50),
(5, 105, 'Cooking Oil 1L', '2025-07-05', '2026-07-05', 180.00, 60),
(6, 106, 'Toothpaste 100g', '2025-03-01', '2027-03-01', 60.00, 90),
(7, 107, 'Soap Bar', '2025-04-01', '2027-04-01', 35.00, 300),
(8, 108, 'Shampoo 200ml', '2025-05-15', '2027-05-15', 120.00, 70),
(9, 109, 'Biscuits 200g', '2025-06-20', '2026-06-20', 40.00, 150),
(10, 110, 'Soft Drink 1.5L', '2025-07-25', '2025-12-25', 85.00, 100),
(11, 111, 'Soft Drink 1.5L', '2025-06-15', '2026-01-19', 95.0, 110),
(12, 112, 'Soap Bar', '2025-06-18', '2027-03-19', 95.0, 110),
(13, 113, 'Milk 1L', '2025-07-18', '2025-08-10', 45.0, 10);

insert into customer (customer_id, customer_name, phone, gender, purchase_date, quantity, product_id) values
(1, 'Rahul Sharma', 9876543210, 'M', '2025-08-10', 2, 1),
(2, 'Sneha Reddy', 9876501234, 'F', '2025-08-10', 1, 1),
(3, 'Arjun Patil', 9876512345, 'M', '2025-08-11', 5, 2),
(4, 'Priya Singh', 9876523456, 'F', '2025-08-11', 3, 2),
(5, 'Ravi Kumar', 9876534567, 'M', '2025-08-12', 1, 3),
(6, 'Neha Verma', 9876545678, 'F', '2025-08-12', 2, 3),
(7, 'Kiran Das', 9876556789, 'M', '2025-08-13', 4, 4),
(8, 'Meena Joshi', 9876567890, 'F', '2025-08-13', 1, 4),
(9, 'Anil Gupta', 9876578901, 'M', '2025-08-14', 3, 5),
(10, 'Pooja Rao', 9876589012, 'F', '2025-08-14', 2, 5);

select product_name,price from product group by product_name,price having price<100 order by price asc;
select product_name,mfg_date from product group by product_name,mfg_date having mfg_date between '2025-03-01' and  '2025-08-10' ;
select price from product where price>100 group by price having price<150 order by price desc;
select product_name,stock, count(product_id) as total_products from product group by product_id,stock having stock>100;
select sum(price) as total_price from product;

select product_name,product_code from product group by  product_code having product_code>105;
select product_name,exp_date from product group by exp_date,product_name having exp_date between '2025-08-10' and '2025-12-25';
select exp_date from product group by exp_date order by exp_date asc;
select * from product where product_name like 's%';
select product_name from product group by product_name order by product_name asc;
select distinct product_name from product;
select distinct year(mfg_date) from product;
select distinct year(exp_date) from product;



select customer_name,quantity from customer group by customer_name,quantity having quantity>3 order by quantity desc;
select customer_name,purchase_date from customer group by customer_name,purchase_date having purchase_date between '2025-01-01' and '2025-05-31';
select customer_name,product_id from customer group by product_id,customer_name having product_id<108;
select city,count(customer_id) as total_customers from customer group by city having count(customer_id)>1;
select email from customer group by email having email like '%@gmail.com';
select customer_name,quantity from customer order by quantity asc;
select * from customer where customer_name like 'S%';
select * from customer where city in ('Bangalore','Delhi');
select customer_name,purchase_date from customer order by purchase_date desc;
select customer_id,customer_name from customer where quantity between 2 and 5;
select distinct city from customer order by city asc;
select distinct year(purchase_date) from customer;
select distinct product_id from customer order by product_id asc;