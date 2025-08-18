create database cricket;
use cricket;
CREATE TABLE team (
    team_id INT PRIMARY KEY,                      
    team_code INT UNIQUE NOT NULL,                
    team_name VARCHAR(50) NOT NULL,              
    founded_date DATE NOT NULL,                   
    match_time TIME,                              
    avg_age INT CHECK(avg_age > 18),             
    team_type CHAR(1),                            
    contact BIGINT UNIQUE,                        
    budget DOUBLE CHECK(budget >= 0),            
    rating FLOAT DEFAULT 0.0,                    
    is_active BOOLEAN DEFAULT TRUE  
);

CREATE TABLE player (
    player_id INT PRIMARY KEY,                   
    jersey_number INT UNIQUE NOT NULL,            
    player_name VARCHAR(50) NOT NULL,            
    dob DATE NOT NULL,                          
    debut_time TIME,                              
    age INT CHECK(age > 15),                      
    gender CHAR(1),                              
    phone BIGINT UNIQUE,                          
    salary DOUBLE CHECK(salary >= 0),            
    batting_avg FLOAT DEFAULT 0.0,                
    is_captain BOOLEAN DEFAULT FALSE,             
    team_id INT,                                  
    FOREIGN KEY (team_id) REFERENCES team(team_id) 
);

INSERT INTO team (team_id, team_code, team_name, founded_date, match_time, avg_age, team_type, contact, budget, rating, is_active)
VALUES
(1,101,'Mumbai Indians','2008-04-01','15:30:00',28,'M',9876500001,120000000.50,8.5,TRUE),
(2,102,'Chennai Super Kings','2008-04-01','19:30:00',30,'M',9876500002,115000000.00,9.1,TRUE),
(3,103,'Royal Challengers Bangalore','2008-04-01','20:00:00',29,'M',9876500003,118000000.25,8.9,TRUE),
(4,104,'Kolkata Knight Riders','2008-04-01','16:00:00',27,'M',9876500004,110000000.00,8.3,TRUE),
(5,105,'Delhi Capitals','2008-04-01','18:00:00',26,'M',9876500005,105000000.75,8.1,TRUE),
(6,106,'Punjab Kings','2008-04-01','17:00:00',27,'M',9876500006,95000000.00,7.8,TRUE),
(7,107,'Rajasthan Royals','2008-04-01','20:30:00',28,'M',9876500007,97000000.00,7.9,TRUE),
(8,108,'Sunrisers Hyderabad','2012-04-01','21:00:00',29,'M',9876500008,99000000.00,8.2,TRUE),
(9,109,'Lucknow Super Giants','2022-04-01','19:45:00',27,'M',9876500009,102000000.00,7.7,TRUE),
(10,110,'Gujarat Titans','2022-04-01','20:15:00',28,'M',9876500010,108000000.00,8.6,TRUE);


INSERT INTO player (player_id, jersey_number, player_name, dob, debut_time, age, gender, phone, salary, batting_avg, is_captain, team_id)
VALUES
(1,18,'Virat Kohli','1988-11-05','15:30:00',35,'M',9876510001,15000000.00,52.5,FALSE,3),
(2,7,'MS Dhoni','1981-07-07','19:30:00',43,'M',9876510002,12000000.00,45.2,TRUE,2),
(3,45,'Rohit Sharma','1987-04-30','20:00:00',38,'M',9876510003,14000000.00,49.8,TRUE,1),
(4,33,'Hardik Pandya','1993-10-11','16:00:00',32,'M',9876510004,11000000.00,38.4,FALSE,10),
(5,10,'David Warner','1986-10-27','18:00:00',39,'M',9876510005,10000000.00,42.7,TRUE,5),
(6,17,'AB de Villiers','1984-02-17','17:00:00',41,'M',9876510006,13000000.00,50.1,FALSE,3),
(7,63,'Suresh Raina','1986-11-27','20:30:00',39,'M',9876510007,9000000.00,34.9,FALSE,2),
(8,99,'Chris Gayle','1979-09-21','21:00:00',45,'M',9876510008,12500000.00,41.5,FALSE,6),
(9,12,'Shikhar Dhawan','1985-12-05','19:45:00',39,'M',9876510009,9500000.00,39.2,TRUE,6),
(10,93,'Rashid Khan','1998-09-20','20:15:00',27,'M',9876510010,11500000.00,20.7,FALSE,10);

select * from team where avg_age in(27,29);
select * from team where team_code in(103,108);
select * from team where team_name in('Delhi Capitals','Punjab Kings');
select * from team where budget in(115000000.00,97000000.00);

select * from team where avg_age not in(27,29);
select * from team where team_code not in(103,108);
select * from team where team_name not in('Delhi Capitals','Punjab Kings');
select * from team where budget not in(115000000.00,97000000.00);

select * from team where team_name is null;
select * from team where match_time is null;
select * from team where contact is null;
select * from team where rating is null;

select * from team where team_type is not null;
select * from team where founded_date is not null;
select * from team where team_id is not null;
select * from team where match_time is not null;

select * from team where team_name like 'R%';
select * from team where team_name like 'G%';
select * from team where team_name like '%s';
select * from team where team_name like '__c%';

select * from team where team_name not like 'r%';
select * from team where team_name not like '_u%';

select * from team where avg_age between 26 and 27;
select * from team where budget between 108000000 and 120000000;

select * from team where avg_age between 26 and 27;
select * from team where budget between 108000000 and 120000000;

select team_name as name from team;
select team_id as id from team;
select contact phone_no from team;
select budget purse from team;

select * from team order by avg_age desc;
select * from team order by team_name desc;
select * from team order by match_time;
select * from team order by budget asc;


select * from player where age in (27,35);
select * from player where jersey_number in (7,18,45);
select * from player where player_name in ('Virat Kohli','MS Dhoni');
select * from player where salary in (12000000.00,9500000.00);

select * from player where age not in (27,35);
select * from player where jersey_number not in (7,18,45);
select * from player where player_name not in ('Virat Kohli','MS Dhoni');
select * from player where salary not in (12000000.00,9500000.00);

select * from player where player_name is null;
select * from player where debut_time is null;
select * from player where phone is null;
select * from player where batting_avg is null;

select * from player where gender is not null;
select * from player where dob is not null;
select * from player where player_id is not null;
select * from player where debut_time is not null;

select * from player where player_name like 'v%';
select * from player where player_name like 'm%';
select * from player where player_name like '%a';
select * from player where player_name like '__r%';

select * from player where player_name not like 'r%';
select * from player where player_name not like '_a%';

select * from player where age between 30 and 40;
select * from player where salary between 9000000 and 15000000;

select player_name as name from player;
select player_id as id from player;
select phone as phone_no from player;
select salary as income from player;

select * from player order by age desc;
select * from player order by player_name desc;
select * from player order by debut_time;
select * from player order by salary asc;
