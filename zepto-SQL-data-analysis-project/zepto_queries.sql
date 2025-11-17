drop table if exists zepto;

create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150) not null,
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellingPrice numeric(8,2),
weightInGms integer,
outOfStock boolean,
quantity integer
);


-- data exploration

-- count of rows
select count(*) from zepto;

select * from zepto
limit 10;


-- null values
select * from zepto
where name is null
or
category is null
or 
mrp is null
or 
discountPercent is null
or 
discountedSellingPrice is null
or 
weightInGms is null
or 
availableQuantity is null
or 
outOfStock is null
or 
quantity is null;

-- different product categories 
select distinct category
from zepto
order by category;

-- products in stock vs out of stock
select outOfStock, count(sku_id)
from zepto
group by outOfStock;

--  product names present multiple times
select name, count(sku_id) as "Number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;

--  data cleaning

-- products with price = 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0;

delete from zepto where mrp = 0;



-- https://youtu.be/x8dfQkKTyP0?si=dgJ1gG2lZsF2WIjU
 -- time = 17 mins













