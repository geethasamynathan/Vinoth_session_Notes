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
