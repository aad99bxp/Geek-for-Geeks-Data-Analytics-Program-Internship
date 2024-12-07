use swiggy;

-- Rank every restaurant from most expensive to least expensive
select *, 
rank() over (order by cost desc) as 'Rank'
from restaurants;

select *, 
dense_rank() over (order by cost desc) as 'DenseRank'
from restaurants;

select *, 
row_number() over (order by cost desc) as 'RowNumberRank'
from restaurants;


-- Rank every Restaurant from most visited to least visited
select *, rank() over (order by rating_count desc) as 'rank' from restaurants;

-- 3. Rank every restaurant from most expensive to least expensive as per their city

select *, rank() over(partition by city order by cost desc) as 'rank' from restaurants;
select *, dense_rank() over(partition by city order by cost desc) as 'rank' from restaurants;
select *, row_number() over() as 'rank' from restaurants;

-- Find top 5 restaurants of every city as per their revenue

select * from (
	select *, 
		cost*rating_count as 'revenue',
		row_number() over(partition by city order by rating_count*cost desc) as 'rank' 
	from restaurants
) t where t.rank <= 5;

select city,sum(revenue) as 'revenue' from (
	select *, 
		cost*rating_count as 'revenue',
		row_number() over(partition by city order by rating_count*cost desc) as 'rank' 
	from restaurants
) t where t.rank <= 5
	group by city
		order by revenue desc limit 5;



select cuisine,sum(revenue) as 'revenue' from (
	select *, 
		cost*rating_count as 'revenue',
		row_number() over(partition by cuisine order by rating_count*cost desc) as 'rank' 
	from restaurants
) t where t.rank <= 5
	group by cuisine
		order by revenue desc limit 5;
