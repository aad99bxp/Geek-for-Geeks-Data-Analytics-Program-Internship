-- saving the result of the query as separate table
-- Multiple Ways of Doing it

#1. Create a table by defining schema and the write a second query to insert. Inside the insert statement, write the sql query
create table if not exists tbl 
		(id varchar(255), name varchar(255), city varchar(255), 
        rating float, cost int, cuisine varchar(255), 
        rating_count int, revenue int);

insert into tbl
(select id, name, city, rating, cost, cuisine,
rating_count, cost*rating_count as 'revenue'
from 
 ( select * ,
  cost*rating_count, row_number() over (partition by cuisine order by cost*rating_count desc) as 'rank'
  from  restaurants) t
  where t.rank <=5);

select * from tbl;
  
  
#2. Creating Table Directly 
create table if not exists results as (Select * from restaurants);
select * from results;

#3. Creating a Temporary Table - If server is restarted, this table will disappear.
create temporary table if not exists temp_results as (select * from restaurants);