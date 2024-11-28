use myntra;

select * from products;

-- 1) Find the Most Expensive Product on Myntra
select * from products order by discounted_price desc;

-- 2) Find the Least Expensive Product on Myntra
select * from products order by discounted_price asc;

-- 3) Find the Top 5 most expensive product on Myntra
select * from products order by discounted_price desc limit 5;

-- 4) Find top 5 products based on best rating | rating*rating
select product_name, rating, rating_count, round(rating*rating_count) as 'comb_rating' from products order by comb_rating desc limit 5;

-- 5) Find the second most expensive product
select product_name, rating, rating_count , discounted_price from products
order by discounted_price desc limit 1,1;

-- limit X,Y means it will skip the first X rows


-- 6) Find the Second most least expensive product
select * from products order by discounted_price asc limit 1,1; 

-- 7) Find the 10th most expensive product
select * from products order by discounted_price desc limit 9,1;

-- 8) Find the worst rated product by nike
select product_name, rating, round(rating*rating_count) as comb_rating from products where brand_tag="nike" order by comb_rating asc limit 1;

-- Order of Placement 
-- Select> where> group by > order by