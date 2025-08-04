create database Cricket_leauge;
use Cricket_leauge;

create table team_details(
team_id int,
team_code char(3),
team_name varchar(50),
avg_age_of_players float,
win_percentage double,
team_auction_purse bigint,
registered_date date,
match_timeslot time,
first_match_datetime datetime,
playing_year year,
team_owner_networth long
);

desc team_details;

create table player_details(
player_id int,
player_name varchar(100),
player_category char(1),
batting_avg float,
strike_rate double,
player_networth bigint,
player_phone_no long,
birth_date date,
birth_year year,
last_played_time time,
debue_datetime datetime
);

desc player_details;

create table match_schedule(
match_id int,
match_type char(1),
home_team_name varchar(100),
ticket_price float,
total_prize_amount bigint,
total_ticket_price long,
avg_ticket_prize double,
match_date date,
match_time time,
match_start_date_time datetime,
sheduled_year year
);

desc match_schedule;

create table stadium_details(
stadium_id int,
stadium_code char(3),
stadium_name varchar(100),
stadium_capacity long,
stadium_contact_no bigint,
ground_radius float,
stadium_timings time,
stadium_inaugration_datetime datetime,
inaugration_year year,
avg_crowd_rate double
);

create table match_stats(
stats_id int,
strike_rate float,
economy_rate double,
stats_type char(1),
player_name varchar(50),
match_date date,
match_time time,
stats_relesed_datetime datetime,
stats_year year,
stats_viewers long
);

desc match_stats;

drop table match_shedule;

desc stadium_details;