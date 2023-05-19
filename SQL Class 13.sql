create database phoneplus;
use phoneplus;
select * from device;
select device_brand, os,ram from device where 5g = 'no' and front_camera_mp >=16;
select device_brand, os,ram from device where 5g = 'no' or front_camera_mp >=16;
select device_brand, os,ram from device where (5g = 'no' and   front_camera_mp >=16) or (ram = 6);
select device_brand, os,ram from device where 5g is not null ;
select device_brand, os,ram from device where 5g is null ;
select device_brand, os,ram from device where days_used between 200 and 350;
select device_brand, os,ram from device where ram in (3,6,8) ;
select distinct device_brand from device;
select device_brand, os,ram from device where device_brand like '1%';
select device_brand, os,ram from device where device_brand like '%a';
select device_brand, os,ram from device where device_brand like '___%a';
select device_brand, os,ram from device where device_brand like '_______';

select count(device_brand) as result from device;
select device_brand, count(device_brand) as result from device group by device_brand;
select device_brand, avg(ram) as result from device group by device_brand;
select device_brand, sum(ram) as result from device group by device_brand;
select device_brand, min(ram) as result from device group by device_brand;
select device_brand, max(ram) as result from device group by device_brand;
select * from device limit 7;
select * from device order by ram desc limit 7;

create table huawei select * from device where device_brand = 'Huawei';
create table others select * from device where device_brand = 'others';
create table Infinix select * from device where device_brand = 'Infinix';
create table xiaomi select * from device where device_brand = 'xiaomi';
create table motorola select * from device where device_brand = 'Motorola';

alter table huawei add column ID int not null primary key auto_increment first;
alter table others add column ID int not null primary key auto_increment first;
alter table infinix add column ID int not null primary key auto_increment first;
alter table xiaomi add column ID int not null primary key auto_increment first;
alter table motorola add column ID int not null primary key auto_increment first;

select * from huawei;
select infinix.device_brand, infinix.os, xiaomi.ram,xiaomi.battery from infinix inner join xiaomi on infinix.ID = xiaomi.ID;
select infinix.device_brand, infinix.os, xiaomi.ram,xiaomi.battery from infinix right join xiaomi on infinix.ID = xiaomi.ID;
select infinix.device_brand, infinix.os, xiaomi.ram,xiaomi.battery from infinix left join xiaomi on infinix.ID = xiaomi.ID;
select infinix.device_brand, infinix.os, xiaomi.ram,xiaomi.battery from infinix cross join xiaomi on infinix.ID = xiaomi.ID;









