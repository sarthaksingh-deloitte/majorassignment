INSERT into points(no_of_wins,team_name) select count(*),team_won from fixtures group by team_won having count(*)>8;
INSERT into points(no_of_wins,team_name) select count(*),team_lost from fixtures group by team_loss ORDER BY DESC LIMIT 1;
select * from helloworld;
select team_lost from fixtures where venue = 'Kolkata';
select * from fixtures;
select max()
truncate fixtures;

COPY fixtures(match_number, home_team, away_team, venue, team_won, team_lost) FROM 'C:\TEMP2\Fixtures (2).csv' CSV HEADER;

COPY teamDetails(si_no,team_name, captain, owner_name, home_ground) FROM 'C:\TEMP2\team-details (2).csv' CSV HEADER;
select * from teamDetails;
select count(*) from teamDetails;

create table teamDetails(SI_No serial primary key, team_name char(5), captain varchar(50), owner_name varchar(50), home_ground varchar(20));
create table points(team_name char(5) primary key, no_of_wins int, no_of_losses int, points int);
create table fixtures(match_number int primary key, home_team char(5), away_team char(5), venue varchar(20), team_won char(5), team_lost char(5));
INSERT into points(no_of_wins,team_name) select count(*),team_won from fixtures group by team_won having count(*)>8;
select * from points;
truncate points;
select count(*) from fixtures group by team_won;
select * from fixtures;
select * from teamDetails;
select count(*) from teamDetails;
drop table teamDetails;
alter table teamDetails rename column Sl_No to SI_No;
