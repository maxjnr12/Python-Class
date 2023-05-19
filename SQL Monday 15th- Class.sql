use RandDLimited;
select * from employeedata;

select department, avg(age)  as age, count(*) as number_of_employees from employeedata group by department;
select JobRole, Joblevel, avg(MonthlyIncome) as monthly_Income from employeedata group by JobRole, Joblevel;

select department, avg(worklifebalance) as work_life_balance from employeedata group by department;
select JobRole, avg(environmentsatisfaction) as environment_satisfaction from employeedata group by JobRole;
Select JobRole, Joblevel, avg(Yearsatcompany) as years_at_company from employeedata group by JobRole, Joblevel;
select maritalstatus, avg(jobsatisfaction) as Job_satisfaction from employeedata group by Maritalstatus;
select JobRole, Joblevel, avg(relationshipsatisfaction) as relationship_satisfaction from employeedata group by JobRole, Joblevel;
select department, avg(employeecount) as employee_count from employeedata group by department;
select JobRole, Joblevel, avg(standardhours) as standard_hours from employeedata group by JobRole, Joblevel;
select gender, avg(jobinvolvement) as job_involvement from employeedata group by gender;
select JobRole, Joblevel, avg(hourlyrate) as hourly_rate from employeedata group by JobRole, Joblevel;
select JobRole, Joblevel,avg(distancefromhome) as distance_from_home from employeedata group by JobRole, Joblevel;
select JobRole,Joblevel, avg(stockoptionlevel) as stock_option_level from employeedata group by JobRole, Joblevel;
select JobRole, Joblevel, avg(trainingtimeslastyear) as training_times_last_year from employeedata group by JobRole, Joblevel;
select JobRole, Joblevel, avg(totalworkingyears) as total_working_years from employeedata group by JobRole, Joblevel;