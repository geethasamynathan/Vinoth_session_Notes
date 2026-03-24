--SuQuery

/* query within the query is called as subquery. 
inner query will execute first and the it return some data or value. 
Inner query result will be act as input for outer query

Inner query may return single row or multiple row

*/

CREATE TABLE tblDepartment (
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE tblEmployee (
    EmpId INT PRIMARY KEY,
    EmpName VARCHAR(50),
    JobRole VARCHAR(50),
    Salary DECIMAL(10,2),
    DeptId INT,
    ManagerId INT NULL,
    HireDate DATE,
    FOREIGN KEY (DeptId) REFERENCES tblDepartment(DeptId)
);

INSERT INTO tblDepartment (DeptId, DeptName, Location) VALUES
(1, 'HR', 'Chennai'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Sales', 'Delhi');

INSERT INTO tblEmployee (EmpId, EmpName, JobRole, Salary, DeptId, ManagerId, HireDate) VALUES
(101, 'Arun',   'HR Executive',   35000, 1, NULL, '2022-01-10'),
(102, 'Meena',  'HR Manager',     60000, 1, NULL, '2020-03-15'),
(103, 'Ravi',   'Developer',      50000, 2, 106,  '2021-07-20'),
(104, 'Priya',  'Tester',         42000, 2, 106,  '2022-09-05'),
(105, 'Karthik','Accountant',     45000, 3, 108,  '2021-12-01'),
(106, 'Suresh', 'IT Manager',     80000, 2, NULL, '2019-06-25'),
(107, 'Divya',  'Sales Executive',30000, 4, 109,  '2023-02-11'),
(108, 'Nisha',  'Finance Manager',75000, 3, NULL, '2018-11-19'),
(109, 'Vikram', 'Sales Manager',  70000, 4, NULL, '2020-08-30'),
(110, 'Anu',    'Developer',      55000, 2, 106,  '2023-01-18');


SELECT EmpId,EmpName,Jobrole,Salary
FROM tblEmployee
WHERE DeptId= (
SELECT DeptId FROM tblDepartment WHERE DeptName='HR')




SELECT EmpId,EmpName,Jobrole,Salary
FROM tblEmployee
WHERE Salary > (
SELECT avg(Salary) from tblEmployee)



SELECT EmpId,EmpName,Jobrole,Salary
FROM tblEmployee
WHERE DeptId IN (
SELECT DeptId FROM tblDepartment WHERE 
Location in ('Chennai','Bangalore') )

SELECT EmpId,EmpName,Jobrole,Salary
FROM tblEmployee
WHERE DeptId NOT IN (
SELECT DeptId FROM tblDepartment WHERE 
Location in ('Chennai','Bangalore') )

--corelated subquery
CREATE TABLE tblProject
(
projectId int PRIMARY KEY,
ProjectName varchar(100),
DeptId INT,
Budget Decimal(12,2),
StartDate DATE,
FOREIGN KEY(DeptId) references tblDepartment(DeptId)
);

INSERT INTO tblProject (ProjectId, ProjectName, DeptId, Budget, StartDate)
VALUES
(201, 'HR Automation',      1, 200000, '2023-01-10'),
(202, 'Payroll Upgrade',    1, 150000, '2023-03-15'),
(203, 'Inventory App',      2, 500000, '2022-07-01'),
(204, 'Client Portal',      2, 650000, '2023-06-12'),
(205, 'Audit Tracker',      3, 300000, '2022-09-20'),
(206, 'Sales Dashboard',    4, 400000, '2023-02-05');

CREATE TABLE tblPerformance
(
PerformanceId int PRIMARY KEY,
EmpId INT,
ReviewYear INT,
Rating Decimal(3,1),
Bonus Decimal(10,2),
FOREIGN KEY(EmpId) references tblEmployee(EmpId)
);

INSERT INTO tblPerformance (PerformanceId, EmpId, ReviewYear, Rating, Bonus)
VALUES
(1, 101, 2023, 3.8,  5000),
(2, 102, 2023, 4.5, 10000),
(3, 103, 2023, 4.2,  8000),
(4, 104, 2023, 3.9,  6000),
(5, 105, 2023, 4.1,  7000),
(6, 106, 2023, 4.8, 15000),
(7, 107, 2023, 3.5,  4000),
(8, 108, 2023, 4.6, 12000),
(9, 109, 2023, 4.3,  9000),
(10,110, 2023, 4.4, 11000);



SELECT e.EmpId,e.EmpName, e.JobRole,e.Salary,e.DeptId
FROM tblEmployee e
WHERE e.Salary=(
SELECT MAX(e2.Salary) FROM tblEmployee e2 WHERE e2.DeptId=e.DeptId
)

SELECT e.EmpId,e.EmpName, e.JobRole,e.Salary,e.DeptId
FROM tblEmployee e
WHERE e.Salary>(
SELECT AVG(e2.Salary) FROM tblEmployee e2 WHERE e2.DeptId=e.DeptId
)


SELECT e.EmpId,e.EmpName,e.DeptId 
FROM tblEmployee e
WHERE e.DeptId IN (
SELECT p.deptId 
FROM tblProject p
WHERE p.DeptId=e.DeptId 
AND p.budget>(
SELECT AVG(p2.budget)
FROM tblProject p2 
WHERE p2.DeptId=p.DeptId)
)

SELECT e.EmpId,e.EmpName,e.DeptId 
FROM tblEmployee e
WHERE e.DeptId IN (
SELECT p.deptId 
FROM tblProject p
WHERE p.DeptId=e.DeptId 
AND p.budget<200000);

select * from tblEmployee;
select * from tblPerformance

delete from tblPerformance where EmpId=110

-- EXISTS and NOT EXISTS

SELECT e.EmpId,e.EmpName,e.DeptId 
FROM tblEmployee e
WHERE EXISTS(
SELECT 1 FROM tblPerformance p
WHERE p.EmpId=e.EmpId);

SELECT e.EmpId,e.EmpName,e.DeptId 
FROM tblEmployee e
WHERE NOT EXISTS(
SELECT 1 FROM tblPerformance p
WHERE p.EmpId=e.EmpId);


select * from tblEmployee;
-- ANY
SELECT e.EmpId,e.EmpName,e.Salary 
FROM tblEmployee e
WHERE e.Salary > ANY (
SELECT e2.Salary 
FROM tblEmployee e2
WHERE e2.DeptId=1
AND e2.EmpId<>e.EmpId
)

select * from tblEmployee;
-- ANY
SELECT e.EmpId,e.EmpName,e.Salary 
FROM tblEmployee e
WHERE e.Salary > ALL (
SELECT e2.Salary 
FROM tblEmployee e2
WHERE e2.DeptId=e.DeptId
AND e2.EmpId<>e.EmpId
)



--<>

SELECT e.EmpId,e.EmpName,e.Salary,e.DeptId 
FROM tblEmployee e
WHERE e.Salary <>  (
SELECT MIN(e2.Salary)
FROM tblEmployee e2
WHERE e2.DeptId=e.DeptId

)