create database BasketballDatabase;
use BasketballDatabase;

create table Agent(
agent_id int primary key,
a_fname varchar(30),
a_lnmae varchar(30),
agency_name varchar(30)
);

create table coach(
coach_id int primary key,
c_fname varchar(20),
c_lname varchar(20),
c_age int,
year_exp int,
win_perc double,
c_champ_won int
);

create table team(
team_name varchar(20) primary key,
gm_name varchar(30),
t_champ_won int,
city varchar(20),
state varchar(20),
stadium varchar(40),
coach_id int,
foreign key(coach_id) references coach(coach_id)
);

create table Player(
Player_ID int primary key,
P_fname varchar(30),
P_lname varchar(30),
p_age int,
p_height int,
p_champ_won int,
pos varchar(2),
ppg double,
rpg double,
three_pt_perc double,
dfrtg double,
team_name varchar(20),
agent_id int,
foreign key(agent_id) references Agent(agent_id),
foreign key(team_name) references team(team_name)
);

insert into Agent values(201, "Rich", "Paul", "Klutch Sports");
insert into Agent values(202, "Jeff", "Austin", "Octagon");
insert into Agent values(203, "Mike", "Linderman", "Excel");
insert into Agent values(204, "Sam", "Goldfeder", "Excel");
insert into Agent values(205, "Austin", "Brown", "Creative");
insert into Agent values(206, "Steve", "Huemann", "Creative");
insert into Agent values(207, "Bill", "Duffy", "BDA Sports");
insert into Agent values(208, "Aaron", "Mintz", "Creative");
insert into Agent values(209, "Mark", "Bartelstein", "Priority Sports");
insert into Agent values(210, "Jeff", "Schwartz", "Excel");

insert into coach values(101, "Ryan", "Saunders", 34, 1, 34.0, 0);
insert into coach values(102, "Michael", "Malone", 49, 5, 50.9, 0);
insert into coach values(103, "Gregg", "Popovich", 71, 24, 67.5, 5);
insert into coach values(104, "Nick", "Nurse", 53, 2, 72.1, 1);
insert into coach values(105, "Doc", "Rivers", 59, 20, 58.1, 1);
insert into coach values(106, "Frank", "Vogel", 47, 9, 53.5, 1);
insert into coach values(107, "Erik", "Spoelstra", 50, 12, 59.1, 2);
insert into coach values(108, "Mike", "Budenholzer", 55, 7, 58.2, 0);
insert into coach values(109, "Stan", "Van Gundy", 61, 13, 	57.7, 0);
insert into coach values(110, "Brad", "Stevens", 44, 7, 56.4, 0);

insert into team values("Lakers", "Pelinka", 17, "Los Angeles", "California", "Staples Center", 106);
insert into team values("Timberwolves", "Rosas", 0, "Minneapolis", "Minnesota", "Target Center", 101);
insert into team values("Nuggets", "Booth", 0, "Denver", "Colarado", "Pepsi Center", 102);
insert into team values("Spurs", "Wight", 5, "San Antonio", "Texas", "AT&T Center", 103);
insert into team values("Raptors", "Ujiri", 1, "Toronto", "Canada", "Scotiabank Arena", 104);
insert into team values("76ers", "Morey", 3, "Philadelphia", "Pennsylvania", "Wells Fargo Center", 105);
insert into team values("Heat", "Riley", 3, "Miami", "Florida", "American Airlines Arena", 107);
insert into team values("Bucks", "Horst", 1, "Milwaukee", "Wisconsin", "Fiserv Forum", 108);
insert into team values("Pelicans", "Langdon", 0, "New Orleans", "Lousiana", "Smoothie King Center", 109);
insert into team values("Celtics", "Ainge", 17, "Boston", "Massachusetts", "TD Garden", 110);

insert into player values(001, "LeBron", "James", 35, 206, 4, "SF", 27.1, 7.4, 34.4, 104, "Lakers", 201);
insert into player values(002, "Giannis", "Antetokounmpo", 25, 211, 0, "PF", 29.5, 13.6, 30.4, 106, "Bucks", 202);
insert into player values(003, "Nikola", "Jokic", 25, 213, 0, "C", 19.9, 9.7, 31.4, 107, "Nuggets", 203);
insert into player values(004, "D'Angelo", "Russell", 24, 193, 0, "PG", 23.1, 3.9, 36.7, 113, "Timberwolves", 205);
insert into player values(005, "Patrick", "Mills", 32, 185, 1, "PG", 11.6, 1.6, 38.2, 116, "Spurs", 206);
insert into player values(006, "Goran", "Dragic", 34, 190, 0, "PG", 16.2, 3.2, 36.7, 113, "Heat", 207);
insert into player values(007, "Gary", "Harris", 26, 193, 0, "SG", 10.4, 2.9, 33.3, 113, "Nuggets", 208);
insert into player values(008, "Gordon", "Hayward", 30, 201, 0, "SF", 17.5, 6.7, 38.3, 109, "Celtics", 209);
insert into player values(009, "Kemba", "Walker", 30, 183, 0, "PG", 20.4, 3.9, 38.1, 110, "Celtics", 210);
insert into player values(010, "Karl-Anthony", "Towns", 24, 211, 0, "C", 26.5, 10.8, 41.2, 110, "Timberwolves", 204);
insert into player values(011, "Fred", "VanVleet", 26, 185, 1, "PG", 17.6, 3.8, 39.0, 106, "Raptors", 202);
insert into player values(012, "Ben", "Simmons", 24, 208, 0, "PF", 16.4, 7.8, 28.6, 106, "76ers", 201);
insert into player values(013, "Joel", "Embiid", 26, 213, 0, "C", 23.0, 11.6, 33.1, 104, "76ers", 204);
insert into player values(014, "Zion", "Williamson", 20, 198, 0, "PF", 22.5, 6.3, 42.9, 111, "Pelicans", 205);
insert into player values(015, "Brandon", "Ingram", 23, 201, 0, "SF", 23.8, 6.1, 39.1, 110, "Pelicans", 201);
insert into player values(016, "Khris", "Middleton", 29, 201, 0, "SF", 20.9, 6.2, 41.5, 106, "Bucks", 202);
insert into player values(017, "Brook", "Lopez", 32, 213, 0, "C", 12.0, 4.6, 31.4, 105, "Bucks", 203);
insert into player values(018, "Anthony", "Davis", 27, 208, 1, "C", 26.1, 9.3, 33.0, 106, "Lakers", 201);
insert into player values(019, "Danny", "Green", 33,  198, 3, "SG", 8.0, 3.3, 36.7, 108, "Lakers", 201);
insert into player values(020, "Jarrett", "Culver", 21, 198, 0, "SG", 9.2, 3.4, 29.9, 113, "Timberwolves", 202);
insert into player values(021, "Josh", "Okogie", 22, 193, 0, "SG", 8.6, 4.3, 26.6, 113, "Timberwolves", 203);
insert into player values(022, "DeMar", "DeRozan", 31, 198, 0, "SF", 22.1, 5.5, 25.7, 115, "Spurs", 204);
insert into player values(023, "LaMarcus", "Aldridge", 35, 211, 0, "C", 18.9, 7.4, 38.9, 112, "Spurs", 205);
insert into player values(024, "Jamal", "Murray", 23, 193, 0, "PG", 18.5, 4.0, 34.6, 113, "Nuggets", 206);
insert into player values(025, "Bam", "Adebayo", 23, 206, 0, "C", 15.9, 10.2, 14.3, 106, "Heat", 207);