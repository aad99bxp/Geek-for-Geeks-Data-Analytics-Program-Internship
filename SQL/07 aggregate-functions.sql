use myntra;

-- Showing Dataset
select * from products;

-- Find the Min, Max and Average Discouned Price
select min(discounted_price), max(discounted_price), avg(discounted_price) from products;

-- The following query will not Work
select min(discounted_price), marked_price from products;
-- In the above query, one is aggregated column and other is non-aggregated column

-- Find Min, Max, Avg Discounted Price of Biba Brand
select min(discounted_price), max(discounted_price), avg(discounted_price) from products where brand_name="Biba";

-- Use of Alias
select min(discounted_price) as Min, max(discounted_price) as Max, avg(discounted_price) as Average from products where brand_name="Biba";


-- Find Total Revnnue of Puma, considering rating_count as no. of products
select sum(discounted_price*rating_count) from products where brand_name="Puma";

-- Total Revenue Generated, Prodcuts sold in Tshirt
select sum(rating_count) as "Products Sold",
    sum(discounted_price*rating_count) as "Revenue"
    from products where product_tag='tshirts';
    
# Finding number of products in Nike
select count(*) as 'Total Products' from 
		products where brand_tag = 'nike';

select count(distinct product_link ) as 'Total Products' 
	from products where brand_tag = 'nike';
     
# Finding the name of categories nike serves
select distinct(product_tag) as 'Total Products' from products where brand_tag = 'nike';

# Finding the number of categories nike serves
select count(distinct(product_tag)) as 'Total Products' from products where brand_tag = 'nike';


