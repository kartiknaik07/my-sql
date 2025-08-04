create database Television;
use Television;
create table television_details(
television_brand varchar(50),
screen_size float,
rate int,
colour varchar(50),
id int
);

desc television_details;
rename table television_details to television_info;
desc television_info;
alter table television_details add mfd_date date;
alter table television_info drop mfd_date;
alter table television_info modify column rate float;
alter table television_info rename column screen_size to display_size;
insert into television_details values(
"Sony",
32.2,
25000,
"Black",
01,
'25-01-24'
);
insert into television_details values(
"Samsung",
32.4,
28000,
"Black",
02
);
select * from television_details;


create database Mobile;
use Mobile;
create table Mobile_details(
brand varchar(50),
ram int,
version float
);
desc Mobile_details;
drop table Mobile_specifications;
rename table Mobile_details to Mobile_specifications;
desc Mobile_specifications;
alter table Mobile_specifications add last_updated date;
alter table Mobile_specifications drop ram;
alter table Mobile_specifications modify version double;

create database Laptop;
use Laptop;
create table laptop_details(
os_name varchar(50),
rom int,
display_size float
);
desc laptop_details;
rename table laptop_details to laptop_info;
desc laptop_info;
alter table laptop_info add ram int;
alter table laptop_info drop rom;
alter table laptop_info modify display_size double;

create database Movie;
use Movie;
create table movie_info(
movie_id int,
movie_name varchar(20),
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(10),
producer_name varchar(10),
director_name varchar(10),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int
);
desc movie_info;
alter table movie_info modify producer_name varchar(20);
alter table movie_info modify director_name varchar(20);
insert into movie_info values(1,"KGF",'2018-12-20',200.00, '02:30:25',"Kannada",8.2,"Yash","Vjay k","Prashanth",800000000.00,2500000000,'2018-12-21 10:00:00',500);
 
insert into movie_info(movie_id,movie_name,language,rating,actor_name,) values(02,"Kantara","Kannada",8.2,"Rishabh");