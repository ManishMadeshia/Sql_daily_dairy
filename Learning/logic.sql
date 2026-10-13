create table employees(
emp_id int,
name varchar(25),
department varchar(25)
)

insert into employees value(1,'amit','IT'),(2,'Neha','HR'),(3,'Raj','IT'),(4,'Priya','Sales')

create table sale(
sale_id int,
product_id int,
sale_date date,
amount int
)

insert into sale values
(1,101,'2019-01-10',500),
(2,101,'2019-04-05',600),
(3,102,'2019-02-15',300),
(4,103,'2019-03-20',450),
(5,104,'2018-12-20',200),
(6,104,'2019-02-10',350)

select * from sale


--1. Find all sales made during January 2019.
select * from sales where sale_date between '2019-01-01' and '2019-01-31'
select * from sales where month(sale_date) = 1 and year(sale_date) <= 2019


---2. Find all distinct products sold during the first quarter of 2019.
select distinct(product_id) as product from sale where sale_date between '2019-01-01' and '2019-03-31'

--3.Find the first and last sale date for each product.
select product_id, min(sale_date) as oldest_date, max(sale_date) as recent_date from sale group by product_id 


---4. Find products whose earliest sale occurred during the first quarter of 2019.
select product_id , min(sale_date) as earliest_date from sale group by product_id having min(sale_date) between '2019-01-01' and '2019-03-31'

--5 Find all sales made before 2019-01-01 or after 2019-03-31.
select * from sale where sale_date < '2019-01-01' or sale_date > '2019-03-31'

--6 Find all orders placed during January 2020.
select * from sale where sale_date between '2020-01-01' and '2020-01-31'

--7 . Find all orders placed outside the calendar year 2020.
select * from sale where sale_date < '2020-01-01' or sale_date >'2020-12-31' 


--8 Return the distinct product IDs sold at least once during Q1 2019.
select distinct(product_id) from sale where sale_date between '2019-01-01' AND  '2019-03-31'

--9 Return products that have no sales during Q1 2019.
select * from sale where sale_date not between '2019-01-01' AND  '2019-03-31'

--10 For each product, display its earliest and latest sale dates.
select product_id, min(sale_date) as earliest_date,max(sale_date) as latest_sale from sale group by product_id

--11 Return products whose earliest sale is on or after January 1, 2019, and whose latest sale is on or before March 31, 2019.
select product_id, min(sale_date) as earliest_date,max(sale_date) as latest_sale from sale group by product_id
having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'


