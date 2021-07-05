 1. Importing data from CSV to MySQL
    load data infile "C:\Users\Lenovo\OneDrive\Desktop\MySql\data.csv" into table UserDetails columns terminated by "," enclosed by "'" ignore 1 lines;
    
 2. Backing up databases in MySQL.
   show databases;
   use demo;
   exit
   Bye
   
   C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -uroot -p demo > demo_1.sql
   
 
     
 
