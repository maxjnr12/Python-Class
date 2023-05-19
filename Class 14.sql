create database RandDLimited;
use RandDlimited;
select * from employeedata;

select count(distinct JobRole) from employeedata;
select sum(MonthlyIncome) from employeedata;
select min(MonthlyIncome) from employeedata;
select max(MonthlyIncome) from employeedata where JobRole = 'Research Scientist';
select avg(MonthlyIncome) from employeedata where JobRole = 'Laboratory Technician';
select count(JobRole) from employeedata where JobRole = 'Laboratory Technician';
select JobRole, count(JobRole)  from employeedata group by JobRole;
select max(MonthlyIncome) - min(MonthlyIncome) as difference from employeedata;
select department, monthlyincome from employeedata where MonthlyIncome not between 5000 and 7500;
select department, jobrole from employeedata where jobrole like '_______';
select department, jobrole from employeedata where jobrole like '__s%';

#LOADING DATA
#CLAUSE [from, where, distinct, group by, order by]
#CONTROL FLOW PROGRAM [if, ifnull, nullif, ccase]
#CONDITIONS [and, or, (and, or), is not null, is null, between, in, like, not like]
#AGG FUNCTION [sum, min, max, avg, count, first and last rows of data]
#MYSQL JOIN [Left join, right join, inner join and cross join]
#[create a database, create a table, altering a table, insert, update, select and delete]

