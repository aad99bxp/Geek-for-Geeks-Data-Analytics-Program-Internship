
-- creating database named myntra
create database myntra;

-- creating table in the myntra database
create table if not exists myntra(
id int primary key auto_increment,
product_name varchar(255),
brand_name varchar(255),
rating float,
rating_count int,
marked_price float,
discounted_price float,
product_link varchar(255)
);

-- Once the Table is created, we can import the dataset using Table data import wizard
-- Table data import wizard can be found upon right click on database name
-- It is not neccessary to create a table before hand. There is a possibility of creating table
-- automatically when the dataset is loaded. If you have created, then mapping needs to be done
-- in the wizard pop up that appears.

-- Viewing Row Count, data, and alteting table name from myntra to products
select count(*) from myntra;
select * from myntra;
Alter Table myntra rename products;

-- new column for analysis with alias name
select rating, brand_name, marked_price, discounted_price,
marked_price- discounted_price as discounted_amount from products;

-- using Round function
select rating, brand_name, marked_price, discounted_price,
round(marked_price- discounted_price) as discounted_amount from products;

-- Finding Discount percentage
select rating, brand_name, marked_price, discounted_price,
round(((marked_price- discounted_price)/marked_price)*100) as discounted_percent from products;

-- Finding Unique brand names
select distinct(brand_name) from products;