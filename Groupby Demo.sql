select * from Employee

--like operator
select * from Employee where EmpName like 'V%'

select * from Employee where EmpName like 'v__o%'

select * from Employee where EmpName like '%m'

select * from Employee where EmpName not like 'Vi%'


-- Relational Operator


==
>=
!=,<>


INSERT INTO Employee (EmpId, EmpName, Email, Age, Salary, Gender, City, DeptId)
VALUES
(5,  'Arun',   'arun@mail.com',   28, 35000.00, 'male',   'Bangalore', 1001),
(6,  'Divya',  'divya@mail.com',  31, 42000.00, 'Female', 'Mumbai',    1002),
(7,  'Kiran',  'kiran@mail.com',  26, 30000.00, 'male',   'Delhi',     1003),
(8,  'Sneha',  'sneha@mail.com',  29, 39000.00, 'Female', 'Pune',      1003),
(9,  'Rahul',  'rahul@mail.com',  35, 50000.00, 'male',   'Chennai',   1001),
(10, 'Anitha', 'anitha@mail.com', 27, 32000.00, 'Female', 'Hyderabad', 1002),
(11, 'Manoj',  'manoj@mail.com',  33, 45000.00, 'male',   'Coimbatore',1003),
(12, 'Pooja',  'pooja@mail.com',  24, 28000.00, 'Female', 'Kolkata',   1002),
(13, 'Suresh', 'suresh@mail.com', 38, 55000.00, 'male',   'Madurai',   1003),
(14, 'Lavanya','lavanya@mail.com',30, 41000.00, 'Female', 'Trichy',    1002);


SELECT * FROM Employee WHERE SALARY!>30000

SELECT * FROM Employee WHERE SALARY!=42000

SELECT * FROM Employee WHERE SALARY<>42000

SELECT * FROM Employee WHERE SALARY>48000

SELECT * FROM Employee WHERE EmpName not like 'S%';


-- aggregate function

sum
count
avg 
min 
max


select sum(salary)as TotalSalary from Employee
select  min(salary) as MinSalary from Employee
select  max(salary) as MaxSalary from Employee
select  count(*)  as Count from Employee
select  count(Salary)  as CountSalary from Employee
select  avg(salary) from Employee


update Employee set Salary=null where EmpId=4


SELECT  DeptId,count(*) as TotalEmployees 
from Employee
GROUP BY DeptId;


SELECT  DeptId,sum(Salary) as TotalSalary 
from Employee
GROUP BY DeptId;

select  DeptId , Max(salary) as highestSalary
,min(salary) as LowestSalary
FROM Employee
group by deptId;


SELECT City,count(*) as TotalEmployees
FROM Employee
group by city;


SELECT Gender, COUNT(*) AS  TotalEmployees
FROM Employee
group by Gender

SELECT DeptId, Gender, COUNT(*) AS  TotalEmployees
FROM Employee
group by Gender,DeptId 


select DeptId,Sum(Salary) As TotalSalary
FROM Employee
WHERE Gender='male'
GROUP BY DeptId;


-- Having clause 
/* mainly used to check the condition after Grouping the data */



SELECT DeptId, Count(*) as TotalEmployees
FROM Employee
GROUP by DeptId


SELECT DeptId, Count(*) as TotalEmployees
FROM Employee
GROUP by DeptId
HAVING Count(*)>4


SELECT DeptId, Count(*) as TotalEmployees
FROM Employee
Where Gender='Female'
GROUP by DeptId
HAVING Count(*)>4


SELECT DeptId,
COUNT(*) as TotalEmployees,
SUM(Salary) as TotalSalary,
Min(Salary) as MinimumSalary,
MAx(Salary) as MaximumSalary,
AVG(Salary) as AverageSalary
FROM Employee
GROUP BY DeptId;

--difference between  count(*), count(columnnamr)
SELECT
COUNT(*)  AS TotalEmployees,
COUNT(SALARY) AS TotalSalry,
COUNT(Email) as EmailCount
FROM Employee


--Join 
/*is used to retrive the data from more than one table depends on condition */

select * from Department
select * from Employee
