Basics of MySQL


USE demo;
	-- use the demo db
  
SHOW TABLES;
	-- list all tables
  
NULL;
        -- use NULL when you need to keep empty values for the field.
  
NOT NULL;
       -- Obligate to specify particular value for the field.
  
DESCRIBE;
       -- show the structure of the table.
 
  
  
  
 1.CREATING DB,TABLE
  
  create database demo;
  create table UserDetails(Name text,
  Designation text,
  Salary int);
   
   show tables;
   
 2.INSERTING RECORDS IN TABLE
 
   insert into UserDetails(Name, Designation, Salary) values('Sam', 'Data Scientist', 100000);
   insert into UserDetails(Name, Designation, Salary) values('Jim', 'Data Analyst', 150000);
   insert into UserDetails(Name, Designation, Salary) values('Clay', 'Data Engineer', 200000);
   insert into UserDetails(Name, Designation, Salary) values('Dev', 'Business Analyst', 300000);
   
  
  
 3.MODIFYING DATABASE STRUCTURE
   
  update UserDetails set Designation = 'Senior Data Engineer' where Name = 'Clay';
  update UserDetails set Salary = 250000 where Name = 'Clay';
  select * from UserDetails;
  
 4.DELETE Command
   delete from UserDetails where Salary = 300000;
  
 5.DESCRIBE Command
   desc UserDetails;
   
 6.ALTER Command
   alter table UserDetails add column Experience int(3);
   
   Deleting column
	       alter table UserDetails
     -> drop column Employee_Id;
     
   Changing name of column
     alter table UserDetails change column Experience Exp int(3);
     
   Deleting NULL values from table(for one column)
     delete from UserDetails
     where Salary is null;
     
   or for multi-columns
      delete from UserDetails
      where COALESCE (your_column1, your_column2, your_column3 ) IS NULL;
      
   
  
     
  
 
  
  
  
