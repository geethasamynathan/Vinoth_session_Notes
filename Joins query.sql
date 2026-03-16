select * from Department
Select * from Employee


--Join  
/* Types of joins

Left or Left outer join
Right or Rightt outer join
Full outer join
inner join
natural join
cross join
*/


Select e.EmpId, e.EmpName,e.city,d.Id as DeptiId, d.deptName,d.location from Department d
inner Join
Employee e
ON e.DeptId=d.Id

Select e.EmpId, e.EmpName,e.city,d.Id as DeptiId, d.deptName,d.location from Department d
left Join
employee e
ON e.DeptId=d.Id

Select e.EmpId, e.EmpName,e.city,d.Id as DeptiId, d.deptName,d.location from employee e
right Join
department d
ON e.DeptId=d.Id

Select e.EmpId, e.EmpName,e.city,d.Id as DeptiId, d.deptName,d.location from Department d
full Join
employee e
ON e.DeptId=d.Id


select * from Employee

alter table Employee add managerId int
select * from Employee
Select e.EmpId, e.EmpName,m.EmpId as ManagerId ,m.EmpName as ManagerName from Employee e
Join
Employee m
ON e.managerId=m.EmpId

--cross join
Select e.EmpId, e.EmpName,d.Id,d.DeptName from Employee e
Cross join
Department d

