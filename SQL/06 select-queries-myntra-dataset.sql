use myntra;

-- Showing The Data
select * from products;

-- showing specific Columns
select brand_name from products;
select brand_name, rating, rating_count from products;

-- Showing specific columns in specific order
select rating, brand_name, rating_count from products;

-- create new_column with mathematical functions | Making Discounted Amount
select product_name, brand_name, marked_price, discounted_price, marked_price - discounted_price as 'discount_amount' from products;

-- New Column: Dicount Percentage || Use of Round Function
select product_name, brand_name, marked_price, discounted_price, 
       marked_price-discounted_price as discount_amount,
       round(((marked_price-discounted_price)/marked_price)*100) as discounted_percent from products;

-- New Column: Rating Filter
select product_name, brand_name, rating, rating_count , rating*rating_count as rating_filter from products;

-- Finding Unique Brands using DISTINCT
select distinct(brand_name) from products;

-- Counting Unique Brands using COUNT & DISTINCT
select count(distinct(brand_name)) from products;

-- Adding Where Clause
select * from products where True;
-- Use the above query if you want to retrieve all records from the products table without applying any conditions.

-- Finding BIBA Brand products
select * from products where brand_name="Biba";
select count(*) from products where brand_name="Biba";


-- Find number of Products of Biba Brand Above 10,000 Discounted Price | USE OF AND
select * from products where brand_name="Biba" and discounted_price>10000;

-- Find number of Products of Biba Brand Between 5000- 10000 Discounted_Price
select count(*) from products where brand_name="Biba" and discounted_price between 5000 and 10000;

-- Find Number of Products of Biba Brand  having discounted price between 5000-10000 and rating more than 4 | USE OF BETWEEN
select count(*) from products where brand_name="Biba" and (discounted_price between 5000 and 10000) and rating>4;


-- Find Products of either Puma or Biba having discounted price more than 10000 | USE OF 0R
select * from products where (brand_name="Puma" or brand_name="Biba") and discounted_price>10000;

-- Find the number of products expect Biba Brand having discounted more than 5000 | USE OF NOT
select count(*) from products where not(brand_name="Biba") and discounted_price>5000;

-- USE OF IN
select distinct * from products where brand_name in ("Biba", "Puma") and discounted_price>5000;

-- USE OF NOT IN
select distinct * from products where brand_name not in ("Biba", "Puma") and discounted_price>5000;