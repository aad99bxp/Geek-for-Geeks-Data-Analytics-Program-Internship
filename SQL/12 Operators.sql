-- Operators

DROP DATABASE IF EXISTS users;
CREATE DATABASE users;

CREATE TABLE IF NOT EXISTS users.users_2021  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2022  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2023  (UserID INT PRIMARY KEY, Name VARCHAR(50));

INSERT INTO users.users_2021 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Lena'), (7, 'Prakash');
INSERT INTO users.users_2022 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Lena'), (3, 'Charlie'), (4, 'Grace');
INSERT INTO users.users_2023 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Lena'), (3, 'Charlie'), (4, 'Grace'), (5, 'Henry');

select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

-- UNION | Attach data vertically | It removes duplicates
select * from users.users_2021 union select * from users.users_2022;


-- UNION ALL  | Attach data Vertically | It doesn't remove duplicates
select * from users.users_2021 union all select * from users.users_2022;

-- EXCEPT | Shows all data from table-1  which is not there in table-2
select * from users.users_2021 EXCEPT select * from users.users_2022;

-- INTERSECT | Show only common data of tables 
select * from users.users_2021 INTERSECT select * from users.users_2022;


select * from users.users_2023 union select * from users.users_2022 union select * from users.users_2021;
select * from users.users_2021 union all select * from users.users_2022 union all select * from users.users_2023;
select * from users.users_2021 EXCEPT select * from users.users_2022 EXCEPT select * from users.users_2023;
select * from users.users_2021 INTERSECT select * from users.users_2022 INTERSECT select * from users.users_2023;