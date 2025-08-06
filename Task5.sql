Create database Aadhar;
use Aadhar;

create table aadhar_info(
id int,
name varchar(30),
moblile_number long,
address varchar(30),
pincode int,
age int,
gender varchar(30),
date_of_birth date,
is_Signature_valid boolean,
relationship_status varchar(30),
state varchar(30)
);

insert into aadhar_info values
(1, "Ramesh", 9876543210, 'Bangalore', 560001, 30, 'Male', '1995-05-12', 1, 'Married', 'Karnataka'),
(2, "Suresh", 9123456780, 'Mysore', 570002, 28, 'Male', '1997-11-23', 0, 'Unmarried', 'Karnataka'),
(3, "Priya", 9988776655, 'Hubli', 580020, 25, 'Female', '1999-03-18', 1, 'Unmarried', 'Karnataka'),
(4, "Divya", 9090909090, 'Mangalore', 575001, 32, 'Female', '1992-07-29', 0, 'Married', 'Karnataka'),
(5, "Kiran", 7894561230, 'Udupi', 576101, 27, 'Male', '1998-12-01', 1, 'Unmarried', 'Karnataka'),
(6, "Sneha", 7001234567, 'Shimoga', 577201, 29, 'Female', '1996-06-06', 0, 'Married', 'Karnataka'),
(7, "Vikram", 8009876543, 'Dharwad', 580001, 26, 'Male', '1999-09-09', 1, 'Unmarried', 'Karnataka'),
(8, "Neha", 8887654321, 'Belgaum', 590001, 31, 'Female', '1993-02-20', 1, 'Married', 'Karnataka'),
(9, "Ajay", 9112233445, 'Gulbarga', 585101, 34, 'Male', '1990-08-15', 0, 'Married', 'Karnataka'),
(10, "Preeti", 9223344556, 'Bijapur', 586101, 23, 'Female', '2001-10-10', 1, 'Unmarried', 'Karnataka'),
(11, "Rahul", 9334455667, 'Bagalkot', 587101, 25, 'Male', '1999-01-25', 0, 'Unmarried', 'Karnataka'),
(12, "Kavya", 9445566778, 'Chikmagalur', 577101, 28, 'Female', '1997-04-14', 1, 'Married', 'Karnataka'),
(13, "Manoj", 9556677889, 'Hassan', 573201, 33, 'Male', '1991-11-11', 0, 'Married', 'Karnataka'),
(14, "Meena", 9667788990, 'Raichur', 584101, 22, 'Female', '2002-02-02', 1, 'Unmarried', 'Karnataka'),
(15, "Deepak", 9778899001, 'Koppal', 583231, 27, 'Male', '1998-03-03', 0, 'Unmarried', 'Karnataka');
 
 select * from aadhar_info;