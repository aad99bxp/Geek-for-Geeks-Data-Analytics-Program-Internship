-- USE OF CONSTRAINTS
create table teacher(
teacherid int not null primary key,
employeeid int,
-- foreign key(employeeid) references students(studentid),
email varchar(50) unique,
experience int  check(experience>2),
college varchar(50) default 'SUSET'
);
 
 
 -- DISTINCT
 SELECT DISTINCT PID FROM Persons;
 
 -- ALIASES
 -- Column Aliasing
 SELECT FirstName AS "First Name", LastName AS "Last Name" FROM Persons;
 
 
 -- Table Aliasing
 -- SELECT a.FirstName, b.DepartmentName FROM Employees AS a JOIN Departments AS b ON a.DepartmentID = b.DepartmentID;