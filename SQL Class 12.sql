create database FFM;
use FFM;
create table EPL(CLUBID int primary key not null, CLUBPOSITION int not null, CLUBNAME text not null, WIN int not null, DRAW int not null, LOST int not null, GOALAGAINST int not null,GOALSFOR int not null, POINT int not null);
alter table EPL ADD column GAMEPLAYED int not null after CLUBNAME;


insert into EPL(CLUBID,CLUBPOSITION,CLUBNAME,GAMEPLAYED,WIN,DRAW,LOST,GOALAGAINST,GOALSFOR,POINT) values
(1940,4,'Mnchester United',38,26,7,5,25,50,WIN *3 + DRAW),
(1941,5,'Liverpool',38,26,6,6,20,40,WIN *3 + DRAW),
(1942,6,'Everton',38,23,8,7,15,30,WIN *3 + DRAW),
(1943,2,'Manchester City',38,29,5,4,18,30,WIN *3 + DRAW),
(1945,1,'Arsenal',38,31,4,3,15,30,WIN *3 + DRAW),
(1946,3,'Newcastle',38,25,8,7,18,30,WIN *3 + DRAW),
(1949,10,'Watford',38,4,10,24,25,15,WIN *3 + DRAW),
(1948,8,'Norwich',38,19,3,8,20,18,WIN *3 + DRAW),
(1947,7,'Brentford',38,19,4,7,18,15,WIN *3 + DRAW),
(1944,9,'Everton',38,5,9,24,19,15,WIN *3 + DRAW);

SELECT * FROM EPL;
select * from epl order by CLUBPOSITION ASC;
select * from epl order by CLUBPOSITION DESC;
select * from epl group by GOALSFOR;
select distinct GOALSFOR FROM EPL;

update EPL set GOALAGAINST = 50 where CLUBID = 1943;
SELECT * , if(GOALSFOR >= 50, '50 Above', 'Below 50') as result from epl;
SELECT CLUBNAME,CLUBPOSITION,GOALAGAINST,GOALSFOR, ifnull(GOALAGAINST,GOALSFOR) as result from epl;
SELECT CLUBNAME,CLUBPOSITION,GOALAGAINST,GOALSFOR,nullif(GOALAGAINST,GOALSFOR) as result from epl;

