use movies;
delete from kannada_movies_info where movie_name = 'Lucia' and language = 'Kannada';
select * from kannada_movies_info where actor_name = 'yash' or director_name = 'Prashanth Neel';
select * from kannada_movies_info where ticket_price > 120 and ticket_price < 150;
select * from kannada_movies_info where not certificate = 'U/A';
 select * from kannada_movies_info;
 
 delete from tamil_movies_info where  actor_name = 'Suriya' or actor_name = 'Vikram';
 select * from tamil_movies_info where ticket_price > 120 and ticket_price < 150;
 select * from tamil_movies_info where not budget < 100000000;
 select * from tamil_movies_info where director_name = 'Lokesh Kanagaraj' or producer_name = 'Lyca Productions';
 
 select * from tamil_movies_info;
 
delete from telugu_movies_info where movie_name = 'Bimbisara' and actor_name = 'Kalyan Ram';
select * from telugu_movies_info where certificate = 'A' or director_name = 'Sukumar';
select * from telugu_movies_info where duration > '02:30:00' and duration < '03:00:00';
select * from telugu_movies_info where not collection < 1000000000;

select * from telugu_movies_info;
