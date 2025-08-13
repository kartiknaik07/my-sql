create database university;
use university;

create table university_info(
uni_id int primary key,
uni_name varchar(50) not null,
location varchar(20) default "Karnataka",
established_year year check(established_year>1800)
);
desc university_info;

create table students(
s_id int primary key,
s_name varchar(20) not null,
uni_id int,foreign key(uni_id) references university_info(uni_id),
age int check(age>0)
);
desc students;

create table rank_holders(
s_id int,foreign key(s_id) references students(s_id),
uni_id int,foreign key(uni_id) references university_info(uni_id),
marks int check(marks>35),
s_rank int not null
);

desc rank_holders;

insert into university_info(uni_id,uni_name,established_year) values(1,"VTU",1958);
insert into university_info(uni_id,uni_name,established_year) values(2,"BU",1960);
insert into university_info(uni_id,uni_name,established_year) values(3,"KUD",1949);
insert into university_info(uni_id,uni_name,established_year) values(4,"MU",1959);

insert into students values(1,"Anup",3,24),
(2,"Akash",1,23),
(3,"Gagan",2,24),
(4,"Sanat",1,23),
(5,"Vinay",1,23);

insert into rank_holders values(4,1,99,1),
(1,3,98,2),
(3,2,90,3),
(2,1,86,4),
(5,1,81,5);