use swiggy;


-- Creating a view for the users
drop view if exists user_view;
create view user_view as 
(select name, city, rating,rating_count as'orders', cuisine, cost
 from restaurants);
 select * from user_view;
 
 
 -- Creating a view having only cuisine = sweets, ice-creams, ice cream cakes.
 create view sweets as 
 (select name, city, rating,rating_count as orders, cuisine, cost
 from restaurants where cuisine in ('Sweets', 'Ice Cream', 'Ice Cream Cakes', 'Desserts'));
 
 