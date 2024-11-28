use myntra;
select * from products;

-- 1) Find the names of unique brands
select distinct brand_name from products;
-- 2) count the  unique brands
select count(distinct brand_name) from products;

-- 3) Find the number of products in each brand.
select brand_name from products group by product_tag; 
-- the abive query gives error because "select brand_name" as brand_name is a non-aggregated function
-- The correct query is:
select brand_tag, count(product_tag) from products group by brand_tag;

#4) Write a query to find the number of produts and their average discounted price for each brand
select brand_tag, count(distinct product_tag), discounted_price from products group by brand_tag; 
-- Mapping Error as discounted price is non-aggregated function column
-- Correct query is:
select brand_tag, count(distinct product_tag), avg(discounted_price) from products group by brand_tag; 


#5 Find number of products in each product category
select product_tag, count(distinct product_name) from products group by product_tag; 

#6 Most Expensive Brand
select brand_name , avg(discounted_price) as average from products group by brand_name order by average desc limit 1;

#7 Most Expensive Category
select product_tag, avg(discounted_price) as average from products group by product_tag order by average desc limit 1;

#5 Top 5 Brands in terms of generated Maximum Revenue
select brand_name , sum(rating*rating_count) as max_revenue from products group by brand_name order by max_revenue desc limit 5;

#6 Top 5 brands in terms of product sold
select brand_name, sum(rating_count) as products_sold from products group by brand_name order by products_sold desc limit 5;

#7 Top 5 categories sold and their revenue
select product_tag, sum(rating*rating_count) as revenue from products group by product_tag order by revenue desc limit 5;

#8 which category of any specific brand is sold the most
select brand_name, product_tag, sum(rating_count) as sold from products group by brand_name, product_tag order by sold desc;

