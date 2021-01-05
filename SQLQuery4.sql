create table new(Team varchar(15), Day varchar(15), Opponent varchar(15),Runs int)
insert into new values('Dragons',	'Sunday','Swallows',4);
insert into new values('Tigers',	'Sunday',	'Bay Stars',9);
insert into new values('Carp','Sunday','Giants',2);
insert into new values('Swallows','Sunday','Dragons',7);
insert into new values('Bay Stars','Sunday','Tigers',	2);
insert into new values('Giants', 'Sunday','Carp',4);
insert into new values('Dragons','Monday','Carp'	,6);
insert into new values('Tigers','Monday',	'Bay Stars',	5);
insert into new values('Carp','Monday',	'Dragons'	,3);
insert into new values('Swallows',	'Monday',	'Giants'	,0);
insert into new values('Bay Stars',	'Monday','Tigers'	,7);
insert into new values('Giants',	'Monday',	'Swallows'	,5);

  SELECT Team, Day
     FROM new S1
     WHERE Runs <= ALL
         (SELECT Runs FROM new S2
          WHERE S1.Day = S2.Day
         )


create table Rrr(a int,b int)
insert into Rrr values(1,1)
insert into Rrr values(3,2)
insert into Rrr values(2,2)
insert into Rrr values(8,7)

 SELECT * FROM Rrr WHERE a <> b 

 SELECT Team, dayy
     FROM score
     WHERE Opponent IS NULL OR
         NOT (Runs >= 0)
create table tests(a int,b int, c int)
insert into tests values(3,4,5);
insert into tests values(5,5,5);
insert into tests values(8,6,5);
insert into tests values(0,9,5);
insert into tests values(6,7,4);

SELECT a, b, c FROM tests ORDER BY c DESC, b ASC; 

CREATE TABLE Sss(B INT,C INT, D INT)
INSERT INTO Sss VALUES(4,5,1)
INSERT INTO Sss VALUES(6,7,2)
INSERT INTO Sss VALUES(8,9,3)

SELECT *
FROM rr RIGHT OUTER JOIN Sss
ON rr.B=Sss.B

SELECT Team, Day
     FROM new S1
     WHERE NOT EXISTS
         (SELECT * FROM new S2
          WHERE S1.Runs = S2.Runs AND
              (S1.Team <> S2.Team 
               OR S1.Day <> S2.Day)
         )