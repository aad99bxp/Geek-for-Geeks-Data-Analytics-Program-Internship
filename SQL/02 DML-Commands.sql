-- DML Commands
-- INSERT
INSERT into Persons values(101, "Dubey", "Abhay", 18, "Noida");
select * from Persons;

-- Another Way of Inserting 
Insert into Persons (PID, LastName, FirstName, Age, City) values (102, "Dubey", 'Aditya', 19, 'NCR-Delhi');

-- Inserting Multiple Rows at Once
Insert into Persons values(
103, 'Balbua', 'Rocky', 32, 'NY'),
(104, 'Saniye', 'Nate', 26, 'California');

-- UPDATE single Row
UPDATE Persons SET LastName = 'Bhardwaj', City= 'Noida' WHERE PID = 101;
select * from Persons;

INSERT into Persons values(102, "Banerjee", "Mohan", 28, "Kolkata");
select * from Persons;

-- UPDATE MULTIPLE ROWS
Update Persons set City="NCR";

-- DELETE 
DELETE FROM Persons WHERE LastName='Banerjee';