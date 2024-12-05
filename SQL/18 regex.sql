use swiggy;
select * from restaurants;

-- using like
select * from restaurants where name like 's%';
select * from restaurants where name like '_s%';
select * from restaurants where name like '%S%';
select * from restaurants where name like '%Pizaa%';
select * from restaurants where name like '_h_%';

-- using regex
select * from restaurants where name regexp '^s';
select * from restaurants where name regexp 's';