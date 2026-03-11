<<<<<<< HEAD


-- step 1: 
create database Vinoth_DB


use Vinoth_DB

CREATE TABLE Employee
(
	Emp_Id int,
	Name varchar(20),
	Gender varchar(10),
	Location varchar(40),
	Email varchar(50)
)



--view table data

select * from Employee

--insert records into table

insert into Employee values
(101,'Vinoth','Male','Coimbatore','vinoth@mail.com')

insert into Employee values
(101,'Geetha','Female','Tirupur','geetha@mail.com')

--partial insertion
insert into Employee (name,gender) values
('Fransy','Female')


--how are we going to avoid the null values nad duplicate values for any column

--primary key constraint
/*
primary key constraint does not allow the duplicate as well as Null Value

we can create only on primary key per table
*/

create table employee1
(
id int primary key,
name varchar(50)
)

insert into employee1 values(101,'Kalai');

insert into employee1 values(101,'Leela'); -- error Violation of PRIMARY KEY 

 insert into employee1 (name) values ('vishnu') --error Cannot insert the value NULL into column 'id', table 


 /*
 Types of SQL Statements
 SQL statements are commonly divided into 5 major categories:

DDL – Data Definition Language

DML – Data Manipulation Language

DQL – Data Query Language

DCL – Data Control Language

TCL – Transaction Control Language

DDL – Data Definition Language

DDL statements are used to define or change the structure of database objects.

These objects include:

database

table

view

index

Common DDL Statements

CREATE

ALTER

DROP

TRUNCATE

RENAME

*/

create table employee1
(
id int primary key,
name varchar(50)
)




--add new column in the existing table
ALTER TABLE EMPLOYEE1 ADD Email varchar(100)


-- HOW TO CHANGE THE Datatype of the column
ALTER TABLE employee1 alter COLUMN name VARCHAR(20)


-- how to view the detaild of table (howmany columns ,datatype, size,...)
sp_help employee1

select * from employee1
--TRUNCATE
/*Used to remove all rows from a table, but the table structure remains.*/
TRUNCATE TABLE EMPLOYEE1;



--drop
drop table employee1

select * from employee
/*
DML – Data Manipulation Language

DML statements are used to work with the data inside tables.

Common DML Statements

INSERT

UPDATE

DELETE
*/
insert into employee values
(102,'peter','Male','CBE','peter@mail.com'),
(103,'Tina','Female','TUP','Tina@mail.com'),
(104,'pem','Female','TUP','pem@mail.com'),
(105,'Sam','Male','Chennai','sam@mail.com')


-- update single column value

UPDATE employee SET Emp_Id=106 WHERE Name='Geetha'

select * from employee

-- update multiple column values
UPDATE employee SET Emp_Id=107,Location='Hyderabad',Email='fransy@mail.com' WHERE Name='Fransy'

-- WHERE Clause
select * from Employee where emp_id=101

-- and operator is used to check muliple conditions
select * from Employee
select * from Employee where gender='Male' and Location='CBE'

-- OR operator is used to check anyone condition satisfies 

select * from Employee
select * from Employee where gender='Male' or Location='CBE'

-- in operator is used to check multiple values at atime
select * from Employee
select * from Employee where emp_id in (101,102,105,106)

--not in operator
select * from Employee
select * from Employee where emp_id not in (101,102,105,106)

-- between operator
select * from Employee
select * from Employee where emp_id between 103 and 106


-- not between operator
select * from Employee
select * from Employee where emp_id not between 103 and 106

 insert into Employee (Emp_Id,Name,Gender) values (108,'Lalitha','Female')

 --is null
 select * from Employee
select * from Employee where Location is null

-- --is not  null
 select * from Employee
select * from Employee where Location is not null

--Delete
delete from employee where Emp_Id=108
truncate table employee


-- how to drop column from table

drop table employee1
create table employee1
(
id int primary key,
name varchar(50)
)

select * from employee1

ALTER TABLE employee1 DROP COLUMN Name;


drop table employee1
create table employee1
(
id int primary key,
name varchar(50)
)

insert into employee1 values
(4,'Mani'),
(2,'Sam'),
(5,'Gem'),
(1,'Isai')

select * from employee1

--how to add primary key constraint for the existing table
select * from employee

ALTER TABLE Employee
ALTER COLUMN Emp_id int Not null

ALTER TABLE Employee
ADD Constraint empid_pk primary key(Emp_id)


-- constraints is aily used to apply the  condition based on the requiremnt

/*
1.Primary Key
2.Foreign Key Constraint
3.Unique Constraint
4.Check constraint
5.Not Null
6.default
*/

CREATE TABLE Department
(
Id int Primary key,
DeptName VARCHAR(50) NOT NULL,
Location varchar(100)
)

insert into Department values (1001,'Transport','Mumbai')


Select * from Department

drop table Employee

CREATE TABLE Employee
(
EmpId int constraint pk_empid Primary key,
EmpName VARCHAR(50) NOT NULL,
Email VARCHAR(100) CONSTRAINT uq_email UNIQUE,
Age INT CONSTRAINT ch_age CHECK (Age>=18),
Salary decimal(10,2) CONSTRAINT ch_employee_sal CHECK (Salary>0),
Gender varchar(10) CONSTRAINT chk_emp_gender CHECK( Gender IN ('Male','Female')),
City varchar(100) CONSTRAINT df_empcity DEFAULT 'Chennai',
DeptId INT ,
CONSTRAINT fk_emp_deptId FOREIGN KEY(DeptId) References Department(Id)
)


Insert into Employee (EmpId,EmpName,Email,Age,Salary,Gender,City,DeptId) 
values (4,'tina','tina@mail.com',40,100,'Female','Hyderabad',1002)

Select * from employee
=======


-- step 1: 
create database Vinoth_DB


use Vinoth_DB

CREATE TABLE Employee
(
	Emp_Id int,
	Name varchar(20),
	Gender varchar(10),
	Location varchar(40),
	Email varchar(50)
)



--view table data

select * from Employee

--insert records into table

insert into Employee values
(101,'Vinoth','Male','Coimbatore','vinoth@mail.com')

insert into Employee values
(101,'Geetha','Female','Tirupur','geetha@mail.com')

--partial insertion
insert into Employee (name,gender) values
('Fransy','Female')


--how are we going to avoid the null values nad duplicate values for any column

--primary key constraint
/*
primary key constraint does not allow the duplicate as well as Null Value

we can create only on primary key per table
*/

create table employee1
(
id int primary key,
name varchar(50)
)

insert into employee1 values(101,'Kalai');

insert into employee1 values(101,'Leela'); -- error Violation of PRIMARY KEY 

 insert into employee1 (name) values ('vishnu') --error Cannot insert the value NULL into column 'id', table 
>>>>>>> bdbe118cf7e54c2f9361bf130a2fcb85d8cd42c7
