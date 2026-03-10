

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