use swiggy;
select * from restaurants;


-- Which restaurant of Abohar city is visited by least number of people?
select min(rating_count) as 'rating_count' from restaurants where city="Abohar"; 
select * from restaurants where rating_count=20 and city ="Abohar";

select * from restaurants where city="Abohar" and rating_count = (
select  min(rating_count)
from restaurants
where city="Abohar");



-- Which restaurant has generated maximum revenue all over India?
#Approach 1 without using Subqyery
select name, max(rating_count*cost) as 'max_revenue' from restaurants group by name order by max_revenue desc limit 1;

#Approach 2 using subquery 
# It is also a scalar subquery as the inner query returns single value which is used in the main query for filtering
select * from restaurants where rating_count*cost =
( select max(rating_count*cost) from restaurants ) ;


-- Whcih restaurants are having rating more than aveage rating
select * from restaurants where rating>(
select avg(rating) from restaurants);



-- Which restaurant in delhi  has generated most revenue
select * from restaurants where city="Delhi" and rating_count*cost =
(select max(rating_count*cost) from restaurants where city="Delhi");



-- Multiple Row Subquery Example
select * from restaurants where city in (
select distinct city from restaurants where cuisine="Biryani");