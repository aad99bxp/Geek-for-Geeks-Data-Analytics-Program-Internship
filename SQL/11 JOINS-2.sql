# Dataset- Mnaual Enties in gfg db- tables- department, employees, salaries

use gfg;

select * from department;
select * from employees;
select * from  salaries;


-- Left Join on Employees & Department based on Department ID
select * from employees  left join department on department.DepartmentID=employees.DepartmentID;
select * from employees t1 left join department t2 on t1.DepartmentID= t2.DepartmentID;


-- Right Join on Employees & Department based on Department ID
select * from employees  right join department on department.DepartmentID=employees.DepartmentID;
select * from employees t1 right join department t2 on t1.DepartmentID= t2.DepartmentID;

-- Inner Join on Employees & Department based on Department ID
select * from employees t1 inner join department t2 on t1.DepartmentID= t2.DepartmentID;
select * from employees t1 inner join department t2 on t1.DepartmentID= t2.DepartmentID;


-- Multiple Joins on Employee, Department & Salary
select * from gfg.employees t1 
			inner join gfg.department t2 on t1.departmentid = t2.departmentid 
						inner join gfg.salaries t3  on t1.employeeid = t3.employeeid;

-- Selecting Specific Columns
select t1.EmployeeID, t1.FirstName, t1.LastName, t2.DepartmentName, t3.Salary from gfg.employees t1 
right join gfg.department t2 on t1.departmentid = t2.departmentid 
right join gfg.salaries t3  on t1.employeeid = t3.employeeid;

-- Cross Joins
select * from employees t1 cross join department t2 on t1.DepartmentID= t2.DepartmentID;
SELECT * FROM gfg.department CROSS JOIN gfg.salaries;

-- Full Outer Joins
SELECT *
FROM department
FULL OUTER JOIN employees
ON department.departmentID = employees.departmentID;


# Difference between Cross join and Full Outer join
#Feature	      | Cross Join	              | Full Outer Join
#Join Condition | No condition	         | Requires a join condition
#Result set     | All possible combinations | All rows from both tables, including unmatched rows
#Use Cases      | Rarely used directly	    | Comparing and combining data
