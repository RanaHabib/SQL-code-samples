create table R(A int, B int)
create table S(C int, D int)
create table T(E int, F int)

insert into R values(0,1)
insert into R values(1,0)
insert into R values(1,1)

insert into S values(0,1)
insert into S values(1,0)
insert into S values(1,1)

insert into T values(0,1)
insert into T values(1,0)
insert into T values(1,1)
SELECT A, F, SUM(C), SUM(D)
     FROM R, S, T
     WHERE B = C AND D = E
     GROUP BY A, F
     HAVING COUNT(*) > 1

