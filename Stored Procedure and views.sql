select * from Employee

--stored procedure

/*
It is pre compiled query. Mainly used to avoid sql injection attacks.
*/

create or alter procedure  usp_GetAllemployee
as
BEGIN
select * from Employee;
END
go


exec usp_GetAllemployee;
execute usp_GetAllemployee

--  in , and out parameter

CREATE OR ALTER PROC GetEmployeeByGender(@gender varchar(10))
as
BEGIN
select * from Employee where gender=@gender;
END


exec GetEmployeeByGender 'male'
exec GetEmployeeByGender 'female'



create or alter Procedure GetEmployeeCountByGender(@gender varchar(10),@totalCount int OUT)
AS
BEGIN
SELECT @totalCount=count(*) FROM Employee where gender=@gender;
END;


declare @totalemployees int

EXEC GetEmployeeCountByGender 
@gender='male',
@totalCount=@totalemployees OUTPUT

SELECT @totalemployees as TotlaEmployees


-- can we perform DML operation using Stored Procedure


INSERT INTO Employee values (15,'Tina1','tina1@mail.com',24,56000,'female','Texas',1001,2)

Select * from employee;
CREATE PROC Add_New_Employee(@id int, @name varchar(30), @mail varchar(50), 
@age int,@salary money,@gender varchar(10),@city varchar(20),@did int,@mgrId int)
AS
BEGIN
INSERT INTO Employee values (@id,@name,@mail,@age,@salary,@gender,@city,@did,@mgrId)
END


exec Add_New_Employee 16,'Revathi','revathi@mail.com',34,78000,'female','Tirupur',1002,3


-- views

create view vw_EmployeeBasicDetail
AS
SELECT EMPId, EmpName,Gender,City from Employee


select * from vw_EmployeeBasicDetail;


--simple view
/* from single table  */

update vw_EmployeeBasicDetail SET City='Coimbatore' where Empid=1


-- complex view
/*
When we fetch data from multiple tables it is called as Complex view.
*/

Select e.EmpId, e.EmpName,e.city,d.Id as DeptiId, d.deptName,d.location from Department d
inner Join
Employee e
ON e.DeptId=d.Id


select * from employee
select * from Department


create or alter view vw_EmployeeWithDepartment
AS
SELECT e.Empid, e.EmpName, e.Gender, e.City,d.DeptName,d.Location as 'DepartmentLocation'
FROM Employee  e join 
Department d
on e.DeptId=d.Id


SELECt * from vw_EmployeeWithDepartment

Update vw_EmployeeWithDepartment SET City='Texas' where EmpId=1;


