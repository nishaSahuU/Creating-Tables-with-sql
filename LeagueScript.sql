create table Team(
TeamID   integer  primary key,
TeamName char(20) not null,
FeesDue decimal(8,2),
SignUpDate  date  not null)
;
create table Player(
PlayerID   integer  primary key,
FirstName char(12) not null,
Lastname char(12) not null,
Phone  char(3),
Status cahr(3),
    check(Status in('cap','mem','sub') ),
TeamID integer references Team(TeamID)
);

create table Court(
CourtID  char(5) primary key,
CourtName   char(40) not null
);

create table Schedule (
GameNum integer primary key,
CourtID char(5) references Court(CourtID),
Team1 integer references Team(TeamID),
Team2 integer references Team(TeamID),
GameDate  date,
GameTime integer);







