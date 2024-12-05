-- SubQueries
use gfg;

-- SubQuery in Where Clause
select FirstName, EmployeeID from employees where (select departmentID from department where DepartmentName="sales");

-- Subqueries in Slect Clause
select DepartmentName, 
       (select avg(salary) from employees where employees.departmentID=department.departmentID)  as avg
from department;



-- I have three tables - department(DepartmentID, Departmentname), employees(employeeID,Fname, Lname,departmentID), and salaries(employeeID, salary)
-- You need to write a query for MySQL to find the average salary for all the departments

SELECT d.DepartmentName, AVG(s.salary) AS AverageSalary
FROM employees e
INNER JOIN salaries s ON e.employeeID = s.employeeID
INNER JOIN department d ON e.departmentID = d.DepartmentID
GROUP BY d.DepartmentName;

-- Subquery inside the From Clause
Create Table Customers(
  customerID int primary key,
  customerName varchar(255)
  );
  
insert into customers values (1,'Alice'), (2, 'Bob'), (3, 'Charlie');

create table orders(
orderID int Primary key,
customerID int,
oderdate Date,
foreign key(customerID) references customers (customerID)
);

insert into orders values (101,1, '05-12-24'), (102,3, '05-12-24'), (103,2, '05-12-24');

select c.customerid, c.customerName, ifnull(TotalOrders, 0) as TotalOrders 
from customers c
left join (
 select customerid,count(orderid) as TotalOrders
 from Orders group by customerid) as customerorders on c.customerid =customerorders.customerid;
 