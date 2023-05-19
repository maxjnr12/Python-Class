use officeasystem;
CREATE TABLE STAFFINFO(staffid int primary key not null, staffname text not null,staffgender varchar(20), staffdob date not null);
alter table staffinfo add column staffcontact text not null;
show columns from staffinfo;
alter table staffinfo add column staffaddress text not null after staffdob;
show columns from staffinfo;
alter table staffinfo add column duplicatedid int null first;
show columns from staffinfo;
alter table staffinfo modify column staffgender varchar(50) not null;
show columns from staffinfo;
alter table staffinfo change staffdob staffDateOfBirth date not null;
show columns from staffinfo;
alter table staffinfo drop column duplicatedid;
show columns from staffinfo;
alter table staffinfo rename to staffdetails;
show columns from staffdetails;
drop table staffdetails;
# ASSIGNMENT 
# CREATE A NEW TABLE CALLED STAFF DETAILS TWO [STAFFID, JOBROLE, JOBDESCRIPTION, JOBLEVEL, EDUCATIONLEVEL, WORKHOUR]
