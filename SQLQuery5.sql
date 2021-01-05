create table testt(one varchar(3), two varchar(3))
insert into testt values('abc','def');
insert into testt values('ax','dew');
insert into testt values('abc','acf');
insert into testt values('zzz','baa');
insert into testt values('ABC','Bef');
select one,two 
from testt
where one<two


create table Scores(Team varchar(15), Opponent varchar(15), RunsFor int, RunsAgainst int)

insert into Scores values('Dragons',	'Tigers',	5,	3)
insert into Scores values('Carp',	'Swallows',	4,	6)
insert into Scores values('Bay Stars',	'Giants',	2,	1)
insert into Scores values('Marines',	'Hawks',	5,	3)
insert into Scores values('Ham Fighters',	'Buffaloes',	1,	6)
insert into Scores values('Lions',	'Golden Eagles',	8,	12)
insert into Scores values('Tigers',	'Dragons',	3,	5)
insert into Scores values('Swallows',	'Carp',	6,	4)
insert into Scores values('Giants',	'Bay Stars',	1,	2)
insert into Scores values('Hawks',	'Marines',	3,	5)
insert into Scores values('Buffaloes',	'Ham Fighters',	6,	1)
insert into Scores values('Golden Eagles',	'Lions',	12,	8)

SELECT S1.Team, S2.Team
     FROM Scores S1, Scores S2
     WHERE S1.Team < S2.Team AND
         (S1.RunsFor = S2.RunsFor 
          OR S1.RunsAgainst = S2.RunsAgainst)


create table score(Team varchar(15), dayy varchar(15), Opponent varchar(15), Runs int)

insert into score values('Dragons',	'Sunday',	'Swallows',	4)
insert into score values('Tigers',	'Sunday',	'Bay Stars',	9)
insert into score values('Carp',	'Sunday',	NULL,	NULL)
insert into score values('Swallows',	'Sunday',	'Dragons',	7)
insert into score values('Bay Stars',	'Sunday',	'Tigers',	2)
insert into score values('Giants',	'Sunday',	NULL,	NULL)
insert into score values('Dragons',	'Monday',	'Carp',	NULL)
insert into score values('Tigers',	'Monday',	NULL,	NULL)
insert into score values('Carp',	'Monday',	'Dragons',	NULL)
insert into score values('Swallows',	'Monday',	'Giants',	0)
insert into score values('Bay Stars',	'Monday',	NULL,	NULL)
insert into score values('Giants',	'Monday',	'Swallows',	5)

SELECT Opponent, COUNT(*), AVG(Runs)
     FROM score
     GROUP BY Opponent


	   SELECT Team AS Winner, RunsFor + RunsAgainst AS Runs
     FROM Scores
     WHERE RunsFor > RunsAgainst


	 create table uu(
X int primary key ,
y varchar(5) not null,
z int not null default (5),
constraint ck check (y in ('a', 'b', 'c'))
);

 	insert into uu(x, y) values (5,'B'); 
	insert into uu(x, z) values (1, 1); 
	insert into uu values (44, 'B', 2); 
	update uu set y = 'C' where y='b'; 


	create table rr(A int, B int);
	create table ss(B int,C int, D int);

	insert into rr values(1,2)
	insert into rr values(3,4)
	insert into rr values(5,6)

	insert into ss values(2,4,6)
	insert into ss values(4,6,8)
	insert into ss values(4,7,9)

	   SELECT rr.A, rr.B, ss.B, ss.C, ss.D
     FROM rr Full OUTER JOIN ss
         ON (rr.A > ss.B AND rr.B = ss.C)


		   SELECT Team, Opponent
     FROM Scores
     WHERE Team LIKE '% %' OR
         Opponent LIKE '_i%'