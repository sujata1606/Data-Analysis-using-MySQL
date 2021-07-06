1. Counting Rows & Items
/* How many total employees in this company */
  select count(*) from UserDetails;
  select distinct Salary from UserDetails;
  select count(distinct Salary) from UserDetails;

2. Aggregate Functions (SUM, AVG, STDDEV, MIN, MAX)
   select sum(Salary) as 'Total Salary' from UserDetails;
   select avg(Salary) as 'Total Salary' from UserDetails;
   select stddev(Salary) as 'Total Salary' from UserDetails;
   select min(Salary) as 'Total Salary' from UserDetails;
   select max(Salary) as 'Total Salary' from UserDetails;
   
3. Slicing required data

  IN OPERATOR: 
  select sum(Salary) from UserDetails where Name IN ('Sam','Jim');
  select sum(Salary) from UserDetails where Designation = 'Data Analyst';
  
  NOT IN OPERATOR: To check the sum of salaries leaving VP
  select sum(Salary) from UserDetails where Designation NOT IN('VP');
  
  BETWEEN OPERATOR:
  select Name from UserDetails where Salary between 250000 and 500000;
  select Name from UserDetails where Salary >=100000 and salary <=200000;
  
4. Limiting the data

   select * from UserDetails
   limit 2;
   
5. Sorting data
    in ASCENDING ORDER:
   select * from UserDetails order by Salary;
   
   /* To get the 2nd lowest salary user */
   select * from UserDetails order by Salary limit 1 offset 1;
   
   in DESCENDING ORDER:
   select * from UserDetails order by  Salary desc;
   
   /* To get the 2nd largest salary user */
   select * from UserDetails order by Salary desc limit 1 offset 1;
   
 6. Filtering patterns using LIKE
 
    select * from UserDetails where Name like 'J%';
    select * from UserDetails where Designation like 'D%';
    
 7. Grouping, Rolling up and Filtering 
    /* To get count of unique Designation */
   select count(*) as Frequency, Designation from UserDetails group by Designation;
   
   /* To get the designation wise salary */
   select sum(Salary), Designation from UserDetails group by Designation;
   
   /* Filering output from groupby */
   select sum(Salary) as Total_Salary, Designation from UserDetails group by  Designation having Total_Salary >= 200000;
    
   
   
   
   
  
  
   
  
