1.GroupBy, OrderBy, HavingClause 

/*Primary key : To reduce redundancy of data.*/
/* Group By is used to group the data*/
/* Order By is used to order the in a ascending/decending order*/
create database mydemo_final;

use mydemo_final;

show tables;

CREATE TABLE dataofcustomer
   (
       custid VARCHAR(6)  PRIMARY KEY,
       fname VARCHAR(50),
       mname VARCHAR(30),
       ltname VARCHAR(30),
       city VARCHAR(15),
       age int(10),
       mobileno VARCHAR(10),
       occupation VARCHAR(10),
       dob DATE
         
   );  
   
   show tables;
   
INSERT INTO dataofcustomer VALUES('C00001','Ramesh','Chandra','Sharma','Delhi',45,'9543198345','Service','1976-12-06');
INSERT INTO dataofcustomer VALUES('C00002','Avinash','Sunder','Minha','Delhi',32,'9876532109','Service','1974-10-16');
INSERT INTO dataofcustomer VALUES('C00003','Rahul',null,'Rastogi','Delhi',24,'9765178901','Student','1981-09-26');
INSERT INTO dataofcustomer VALUES('C00004','Parul',null,'Gandhi','Delhi',46,'9876532109','Housewife','1976-11-03');
INSERT INTO dataofcustomer VALUES('C00005','Naveen','Chandra','Aedekar','Mumbai',23,'8976523190','Service','1976-09-19');
INSERT INTO dataofcustomer VALUES('C00006','Chitresh',null,'Barwe','Mumbai',18,'7651298321','Student','1992-11-06');
INSERT INTO dataofcustomer VALUES('C00007','Amit','Kumar','Borkar','Mumbai',76,'9875189761','Student','1981-09-06');
INSERT INTO dataofcustomer VALUES('C00008','Nisha',null,'Damle','Mumbai',43,'7954198761','Service','1975-12-03');
INSERT INTO dataofcustomer VALUES('C00009','Abhishek',null,'Dutta','Kolkata',67,'9856198761','Service','1973-05-22');
INSERT INTO dataofcustomer  VALUES('C00010','Shankar',null,'Nair','Chennai',90,'8765489076','Service','1976-07-12');

   show tables;

select * from dataofcustomer;

/*Aggregate Functions*/

select min(age) from dataofcustomer;
select fname from dataofcustomer where age = 18;
select max(age)  from dataofcustomer;
select fname from dataofcustomer where age = 90;

select  count(*) from dataofcustomer;

select count(age) as total_customer from dataofcustomer;

select count(age) as customer_from_Delhi from dataofcustomer where city ="Delhi";

select avg(age) as average_age from dataofcustomer;

select sum(age) as sum_of_age from dataofcustomer;

select count(fname),city from dataofcustomer group by city;

having clause:

select count(fname),city from dataofcustomer group by city having count(fname)>2;

select count(fname),city from dataofcustomer group by city having count(fname)=2;


/* CONSTRAINT are used reduce the redundancy of data making a coonection between two tables
   FOREIGN KEY used to join two particular tables
*/

CREATE TABLE account
   (
      acnumber VARCHAR(6),
      custid  VARCHAR(6),
      bid VARCHAR(6),
      opening_balance INT(7),
      aod DATE,
      atype VARCHAR(10),
      astatus VARCHAR(10),
      CONSTRAINT account_acnumber_pk PRIMARY KEY(acnumber),
      CONSTRAINT account_custid_fk FOREIGN KEY(custid) REFERENCES dataofcustomer(custid)
      
      
    );
    
INSERT INTO account VALUES('A00001','C00001','B00001',1000,'2012-12-15','Saving','Active');
INSERT INTO account VALUES('A00002','C00002','B00001',1000,'2012-06-12','Saving','Active');
INSERT INTO account VALUES('A00003','C00003','B00002',1000,'2012-05-17','Saving','Active');
INSERT INTO account VALUES('A00004','C00002','B00005',1000,'2013-01-27','Saving','Active');
INSERT INTO account VALUES('A00005','C00006','B00006',1000,'2012-12-17','Saving','Active');
INSERT INTO account VALUES('A00006','C00007','B00007',1000,'2010-08-12','Saving','Suspended');
INSERT INTO account VALUES('A00007','C00007','B00001',1000,'2012-10-02','Saving','Active');
INSERT INTO account VALUES('A00008','C00001','B00003',1000,'2009-11-09','Saving','Terminated');
INSERT INTO account VALUES('A00009','C00003','B00007',1000,'2008-11-30','Saving','Terminated');
INSERT INTO account VALUES('A00010','C00004','B00002',1000,'2013-03-01','Saving','Active');

show tables;


select * from account;


select count(*), astatus from account group by astatus  ;
 
select count(*), astatus from account group by astatus  having count(atype)=7;

select count(*) from account;
select count(*) from customer;
select count(*) from account;

select fname,acnumber from customer inner join account on customer.custid = account.custid;
select count(fname) from customer inner join account on customer.custid = account.custid;


select count(custid) from customer group by city;
select * from dataofcustomer;
select * from dataofcustomer where custid in (select custid from dataofcustomer where age>=45);
