use officeasystem;
create table otherinformation(staffid int primary key not null, overtimeeligibility text not null, overtimerate time not null, vacationeleigibility text not null, salary text not null, jobinvolvement text not null, jobsatisfaction text not null, worklocation text not null);
show columns from otherinformation;
alter table otherinformation add benefiteleigibility text not null after overtimerate;
show columns from otherinformation;
alter table otherinformation modify overtimerate float not null;
show columns from otherinformation;
alter table otherinformation modify salary float not null;
show columns from otherinformation;


#MYSQL QUEREIES
SELECT * FROM STAFFDETAILS;
(101, 'Henry Ford', 'Male', '1970-05-26', 'No 25 Bat Street', '+2348145693632'), 
(102, 'John Akpos', 'Male', '1990-02-25', 'No 85 ben Street', '+2347054545265'),
(103, 'Mary Akpan', 'Female', '1985-05-12', 'No 85 Jack Street', '+2347088545265'), 
(104, 'Femi Ania','Male','1980-12-12','No 50 Bo;t Street','+2347054545261'),
(105, 'Babalola Janet','Female','1992-06-24','No 30 Joe Street','+2348054545265'), 
(106, 'James Job','Male','1975-02-02','No 25 Bala Street','+2349154545265'),
(107,'Jennifer Aaron','Female','1990-10-25','No 85 Arron Street','+2347098655265'), 
(108,'Faith Hope','Female','1995-02-25', 'No 85 Bat Street','+2347054544585'), 
(109,'Miracle  Godwin','Male', '1990-05-25','No 65 Max Street' ,'+234815454535265'), 
(110,'Lawal Akpos', 'Male', '1990-12-31','No 45 Bat Street', '+2349054875265');


select * from staffdetails;

update staffdetails set staffaddress = 'No 25 Bat Street' where staffid = 101;
select * from staffdetails;

delete from staffdetails where staffid = 110;
select * from staffdetails;