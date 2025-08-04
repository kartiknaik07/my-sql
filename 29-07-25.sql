create database Application;
use Application;
create table application_info(
 id int,
 application_name varchar(25),
 company_name varchar(25),
 launch_date date,
 ceo_name varchar(25)
);

desc application_info;

create  database Employee;
use Employee;
create table Employee_info(
id int

);
use Employee;
show tables;









create database Fan;
use Fan;
create table fan_details(
fan_name Varchar(50),
fan_rate float,
fan_color Varchar(50),
no_of_fan_wings int,
mfd_compony_code char(3)
);
desc fan_details;  
drop table fan_details;
rename table fan_details to fan_info;
desc fan_info;
alter table fan_info add fan_id int; 
alter table fan_info add fan_name varchar(50);
alter table fan_info add fan_name int;
alter table fan_info add fan_name char(5);
alter table fan_info drop fan_id;
alter table fan_info modify column fan_rate double;