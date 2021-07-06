List of modules covered under data analysis module

1. Counting Rows & Items.
  select count(*) from UserDetails;
  select distinct Salary from UserDetails;
  select count(distinct Salary) from UserDetails;

2. Aggregate Functions (SUM, AVG, STDDEV, MIN, MAX)
   select sum(Salary) as 'Total Salary' from UserDetails;
   select avg(Salary) as 'Total Salary' from UserDetails;
   select stddev(Salary) as 'Total Salary' from UserDetails;
   select min(Salary) as 'Total Salary' from UserDetails;
   select max(Salary) as 'Total Salary' from UserDetails;
   
3. Slicing required data in MySQL

  IN OPERATOR: 
  select sum(Salary) from UserDetails where Name IN ('Sam','Jim');
  select sum(Salary) from UserDetails where Designation = 'Data Analyst';
  
  NOT IN OPERATOR: To check the sum of salaries leaving VP
  select sum(Salary) from UserDetails where Designation NOT IN('VP');
  
  BETWEEN OPERATOR:
  select Name from UserDetails where Salary between 250000 and 500000;
  select Name from UserDetails where Salary >=100000 and salary <=200000;
  
  
   
  
