--       DDL COMMANDS

/*Creating a Database */
create database SQLPractice;
/* To drop a db: Drop database SQLPractice; */

/* Creating Table within the db */
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Age int(2),
    City varchar(255)
);
-- To Drop a Table : Drop Table Persons;

/* Command in case you just logged in here and want to see tables in a db */
show tables;

-- ALTER COMNANDS: ADD COLUMN, DROP COLUMN, RENAME COLUMN, MODIFY DATATYPE
Alter Table Persons Add Status varchar(10);
Alter Table Persons Drop Column Status;
Alter Table Persons Rename Column PersonID to PID;
Alter Table Persons Modify Column Age float;

-- Checking the Schema of any Table 
Describe Persons;

-- NB: Drop Table would delete the table but Truncate Table would delete the data inside the table
-- TRUNCATE TABLE Persons;