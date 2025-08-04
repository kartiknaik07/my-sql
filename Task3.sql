create database Movies;
use Movies;
create table kannada_movies_info(
movie_id int,
movie_name varchar(20),
certificate char(3),
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(20),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int
);
create table tamil_movies_info(
movie_id int,
movie_name varchar(20),
certificate char(3),
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(20),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int
);
create table telugu_movies_info(
movie_id int,
movie_name varchar(20),
certificate char(3),
release_date date,
ticket_price float,
duration time,
language varchar(20),
rating float,
actor_name varchar(20),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
platform_release_date datetime,
no_of_screens int
);
desc kannada_movies_info;
select * from kannada_movies_info;
insert into kannada_movies_info values(1,"KGF","U/A",'2018-12-21',120.0,'2:35:00',"Kannada",8.5,"Yash","Vijay Kiragandur","Prashanth Neel",500000000,1200000000,'2019-04-01 10;00;00',2500);
insert into kannada_movies_info values(2, 'KGF 2', 'U/A', '2022-04-14', 150.0, '02:48:00', 'Kannada', 8.8, 'Yash', 'Vijay Kiragandur', 'Prashanth Neel', 1000000000, 1600000000, '2022-08-01 09:00:00', 3500);
insert into kannada_movies_info values(3, 'Kantara', 'U/A', '2022-09-30', 100.0, '02:29:00', 'Kannada', 9.0, 'Rishab Shetty', 'Vijay Kiragandur', 'Rishab Shetty', 160000000, 400000000, '2023-01-01 11:00:00', 1500);
insert into kannada_movies_info values(4, '777 Charlie', 'U', '2022-06-10', 120.0, '02:44:00', 'Kannada', 8.9, 'Rakshit Shetty', 'GS Gupta', 'Kiranraj K', 200000000, 450000000, '2022-09-01 08:30:00', 1200);
insert into kannada_movies_info values(5, 'Lucia', 'U/A', '2013-09-06', 80.0, '02:16:00', 'Kannada', 8.3, 'Sathish Ninasam', 'Pawan Kumar', 'Pawan Kumar', 5000000, 25000000, '2014-01-10 18:00:00', 250);
insert into kannada_movies_info values(6, 'Ugramm', 'U/A', '2014-02-21', 90.0, '02:20:00', 'Kannada', 8.2, 'Sri Murali', 'Inkfinite Pictures', 'Prashanth Neel', 20000000, 100000000, '2014-05-01 10:30:00', 300);
insert into kannada_movies_info values(7, 'RangiTaranga', 'U/A', '2015-07-03', 100.0, '02:29:00', 'Kannada', 8.3, 'Nirup Bhandari', 'HK Prakash', 'Anup Bhandari', 30000000, 75000000, '2015-11-01 12:00:00', 350);
insert into kannada_movies_info values(8, 'Avane Srimannarayana', 'U/A', '2019-12-27', 140.0, '02:52:00', 'Kannada', 8.4, 'Rakshit Shetty', 'Mallikarjunaiah', 'Sachin Ravi', 240000000, 600000000, '2020-03-01 14:00:00', 800);

insert into kannada_movies_info(movie_id,movie_name,certificate,release_date,collection) values(9,'Robert','U/A','2021-03-11',250000000);
insert into kannada_movies_info(movie_name,ticket_price,language,actor_name,director_name) values('James',150.0,'Kannada','Puneeth Rajkumar','Chethan Kumar');
insert into kannada_movies_info(movie_id,movie_name,certificate,release_date,actor_name) values(11, 'The Villain', 'U/A', '2018-10-18','Sudeep');
insert into kannada_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(12, 'Bhajarangi', 'U/A', '2013-12-12', 100.0);
insert into kannada_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(13, 'Tagaru', 'U/A', '2018-03-23', 110.0);
insert into kannada_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(14, 'Bell Bottom', 'U', '2019-02-15', 90.0);
insert into kannada_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(15, 'Googly', 'U', '2013-07-19', 85.0);

desc tamil_movies_info;

insert into tamil_movies_info values(1, "Jailer", "U/A", '2023-08-10', 150.0, '2:40:00', "Tamil", 8.0, "Rajinikanth", "Kalanithi Maran", "Nelson Dilipkumar", 300000000, 600000000, '2023-11-01 10:00:00', 2500);
insert into tamil_movies_info values(2, 'Leo', 'U/A', '2023-10-19', 160.0, '02:45:00', 'Tamil', 7.9, 'Vijay', 'SS Lalit Kumar', 'Lokesh Kanagaraj', 250000000, 600000000, '2024-01-01 09:00:00', 3000);
insert into tamil_movies_info values(3, 'Vikram', 'U/A', '2022-06-03', 140.0, '02:53:00', 'Tamil', 8.4, 'Kamal Haasan', 'Raaj Kamal Films', 'Lokesh Kanagaraj', 250000000, 550000000, '2022-09-01 11:00:00', 2700);
insert into tamil_movies_info values(4, 'Master', 'U/A', '2021-01-13', 130.0, '02:58:00', 'Tamil', 7.8, 'Vijay', 'Xavier Britto', 'Lokesh Kanagaraj', 135000000, 300000000, '2021-04-01 08:30:00', 2200);
insert into tamil_movies_info values(5, 'Bigil', 'U/A', '2019-10-25', 120.0, '02:58:00', 'Tamil', 7.2, 'Vijay', 'Archana Kalpathi', 'Atlee', 180000000, 310000000, '2020-02-01 10:30:00', 2000);
insert into tamil_movies_info values(6, 'Ponniyin Selvan 1', 'U', '2022-09-30', 140.0, '02:50:00', 'Tamil', 7.9, 'Vikram', 'Lyca Productions', 'Mani Ratnam', 500000000, 490000000, '2023-01-01 12:00:00', 2800);
insert into tamil_movies_info values(7, 'Ponniyin Selvan 2', 'U', '2023-04-28', 140.0, '02:45:00', 'Tamil', 7.4, 'Karthi', 'Lyca Productions', 'Mani Ratnam', 500000000, 340000000, '2023-08-01 13:00:00', 2500);
insert into tamil_movies_info values(8, 'Soorarai Pottru', 'U', '2020-11-12', 100.0, '02:29:00', 'Tamil', 8.7, 'Suriya', 'Suriya', 'Sudha Kongara', 20000000, 110000000, '2021-01-01 14:00:00', 1500);

insert into tamil_movies_info(movie_id,movie_name,certificate,release_date,collection) values(9,'Kaithi','U/A','2019-10-25',105000000);
insert into tamil_movies_info(movie_name,ticket_price,language,actor_name,director_name) values('Beast',160.0,'Tamil','Vijay','Nelson');
insert into tamil_movies_info(movie_id,movie_name,certificate,release_date,actor_name) values(11, 'Viswasam', 'U', '2019-01-10','Ajith Kumar');
insert into tamil_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(12, 'Mersal', 'U', '2017-10-18', 120.0);
insert into tamil_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(13, 'Theri', 'U', '2016-04-14', 110.0);
insert into tamil_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(14, '96', 'U', '2018-10-04', 90.0);
insert into tamil_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(15, 'Vada Chennai', 'A', '2018-10-17', 85.0);
select * from tamil_movies_info;

desc telugu_movies_info;

insert into telugu_movies_info values(1, "RRR", "U/A", '2022-03-25', 180.0, '3:07:00', "Telugu", 8.7, "NTR Jr.", "DVV Danayya", "S.S. Rajamouli", 550000000, 1200000000, '2022-06-01 10:00:00', 4000);
insert into telugu_movies_info values(2, 'Pushpa', 'U/A', '2021-12-17', 160.0, '02:59:00', 'Telugu', 7.6, 'Allu Arjun', 'Naveen Yerneni', 'Sukumar', 180000000, 365000000, '2022-03-01 09:00:00', 3200);
insert into telugu_movies_info values(3, 'Baahubali 2', 'U/A', '2017-04-28', 150.0, '02:47:00', 'Telugu', 8.2, 'Prabhas', 'Shobu Yarlagadda', 'S.S. Rajamouli', 250000000, 1810000000, '2017-08-01 11:00:00', 4500);
insert into telugu_movies_info values(4, 'Baahubali 1', 'U/A', '2015-07-10', 130.0, '02:39:00', 'Telugu', 8.0, 'Prabhas', 'Shobu Yarlagadda', 'S.S. Rajamouli', 180000000, 650000000, '2015-10-01 08:30:00', 3000);
insert into telugu_movies_info values(5, 'Ala Vaikuntapura', 'U', '2020-01-12', 140.0, '02:45:00', 'Telugu', 7.4, 'Allu Arjun', 'Allu Aravind', 'Trivikram', 100000000, 280000000, '2020-04-01 10:30:00', 2000);
insert into telugu_movies_info values(6, 'Sarkaru Vaari Paata', 'U/A', '2022-05-12', 150.0, '02:42:00', 'Telugu', 6.4, 'Mahesh Babu', 'GMB Entertainment', 'Parasuram', 140000000, 230000000, '2022-08-01 12:00:00', 2500);
insert into telugu_movies_info values(7, 'Bimbisara', 'U/A', '2022-08-05', 120.0, '02:26:00', 'Telugu', 7.3, 'Kalyan Ram', 'Hari Krishna', 'Mallidi Vasishta', 40000000, 100000000, '2022-10-01 13:00:00', 1500);
insert into telugu_movies_info values(8, 'DJ Tillu', 'A', '2022-02-12', 100.0, '02:04:00', 'Telugu', 7.0, 'Siddhu', 'Suryadevara', 'Vimal Krishna', 10000000, 50000000, '2022-05-01 14:00:00', 1000);

insert into telugu_movies_info(movie_id,movie_name,certificate,release_date,collection) values(9,'Waltair Veerayya','U/A','2023-01-13',210000000);
insert into telugu_movies_info(movie_name,ticket_price,language,actor_name,director_name) values('Bhagavanth Kesari',160.0,'Telugu','Balakrishna','Anil Ravipudi');
insert into telugu_movies_info(movie_id,movie_name,certificate,release_date,actor_name) values(11, 'Sye Raa', 'U/A', '2019-10-02','Chiranjeevi');
insert into telugu_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(12, 'Radhe Shyam', 'U/A', '2022-03-11', 140.0);
insert into telugu_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(13, 'Majili', 'U', '2019-04-05', 100.0);
insert into telugu_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(14, 'Jersey', 'U', '2019-04-19', 90.0);
insert into telugu_movies_info(movie_id,movie_name,certificate,release_date,ticket_price) values(15, 'Arjun Reddy', 'A', '2017-08-25', 85.0);

select * from telugu_movies_info;
