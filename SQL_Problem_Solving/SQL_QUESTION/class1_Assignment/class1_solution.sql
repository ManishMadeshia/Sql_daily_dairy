--Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.
--The CountryCode for America is USA.
--The CITY table is described as follows:

solution : 
-------------------creating city table---------------------
create table city(
Id int,
Name varchar(17),
Countrycode varchar(3),
District varchar(20),
Population int
)
Describe city 

--------------------------inserting value into city -------------------
Insert into city(Id,Name,Countrycode,District,Population) Values(6,'Rotterdam','NLD','Zuid-Holland',593321),
(3878,'Scottsdale','USA','Arizona',202705),(3965,'Corona','USA','California',124966),(3973,'Concord','USA','California',121780),
(3977,'Cedar Rapids','USA','Iowa',120758),(3982,'Coral Springs','USA','Florida',117549),(4054,'Fairfield','USA','California',92256),
(4058,'Boulder','USA','Colorado',91238),(4061,'Fall River','USA','Massachusetts',90555)

select * from city 

select * from city where countrycode = 'usa' and population > 100000


--Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
--The CountryCode for America is USA.
--The CITY table is described as follows:

sol : 

Select Name from city where population > 120000


--Q3. Query all columns (attributes) for every row in the CITY table.
--The CITY table is described as follows:

sol :  select * from city

--Q4. Query all columns for a city in CITY with the ID 1661.
--The CITY table is described as follows:

sol : select * from city where id = 1661

--Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. 
sol : select * from city where countrycode = 'JPN'

-- Q6.Query the names of all the Japanese cities inthe CITY table. The COUNTRYCODE for Japan is JPN.
sol : select name from city where countrycode = 'JPN'

--------------creating station table-------------------

Create Table Station(
Id Int,
City Varchar(21),
State Varchar(2),
Lat_N int,
Long_W int
)

--------------inserting value--------------------

INSERT INTO STATION VALUES(794,'Kissee Mills','MO',139,73);
INSERT INTO STATION VALUES(824,'Loma Mar','CA',48,130);
INSERT INTO STATION VALUES(603,'Sandy Hook','CT',72,148);
INSERT INTO STATION VALUES(478,'Tipton','IN',33,97);
INSERT INTO STATION VALUES(619,'Arlington','CO',75,92);
INSERT INTO STATION VALUES(711,'Turner','AR',50,101);
INSERT INTO STATION VALUES(839,'Slidell','LA',85,151);
INSERT INTO STATION VALUES(411,'Negreet','LA',98,105);
INSERT INTO STATION VALUES(588,'Glencoe','KY',46,136);
INSERT INTO STATION VALUES(665,'Chelsea','IA',98,59);
INSERT INTO STATION VALUES(342,'Chignik Lagoon','AK',103,153);
INSERT INTO STATION VALUES(733,'Pelahatchie','MS',38,28);
INSERT INTO STATION VALUES(811,'Dorrance','KS',102,121);
INSERT INTO STATION VALUES(698,'Albany','CA',49,80);
INSERT INTO STATION VALUES(325,'Monument','KS',70,141);
INSERT INTO STATION VALUES(414,'Manchester','MD',73,37);
INSERT INTO STATION VALUES(113,'Prescott','IA',39,65);
INSERT INTO STATION VALUES(971,'Graettinger','IA',94,150);
INSERT INTO STATION VALUES(266,'Cahone','CO',116,127);


select * from station

---Q7.Query a list of CITY and STATE from the STATIONtable.
select city,state from station

--Q8.Query a list of CITY names from STATION for citiesthat have an even ID number. Print the results in any order, but exclude duplicates from the answer.
select Distinct(city) as city_name from station where Id%2=0 order by city asc

--Q9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table
select count(City) as city_count, count(distinct(city)) as distinct_city_count,
(count(City) - count(distinct(City))) as difference_city_count
from Station

--Q10.Query the two cities in STATION with the shortestand longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallestor largest city, choose the one that comes first when ordered alphabetically

select city, length(city) as min_city_length from station order by city asc limit 1

select city, length(city) as max_city_length from station order by city desc limit 1

-- Q11. Query the list of CITY names starting with vowels(i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select distinct(city) as Distinct_city_Name from station where lower(substr(city,1,1)) in ('a','e','i','o','u')

--Q12.Query the list of CITY names ending with vowels(a, e, i, o, u) from STATION. Your result cannot contain duplicates
select distinct(city) as distinct_city_name from station where lower(substr(city,-1,1)) in ('a','e','i','o','u') 

--Q13.Query the list of CITY names from STATION thatdo not start with vowels. Your result cannot
contain duplicates

select distinct(city) as distinct_city_name from station where lower(substr(city,1,1)) not in ('a','e','i','o','u') order by city

--Q14.Query the list of CITY names from STATION thatdo not end with vowels. Your result cannot
contain duplicates.

select distinct(city) as distinct_city_name from station where lower(substr(city,-1,1)) not in ('a','e','i','o','u')

--Q15.Query the list of CITY names from STATION thateither do not start with vowels or do not end
with vowels. Your result cannot contain duplicates.

select city from station where lower(substr(city,1,1)) not in ('a','e','i','o','u') or lower(substr(city,-1,1)) not in ('a','e','i','o','u')

----Q16.Query the list of CITY names from STATION thatdo not start with vowels and do not end with
vowels. Your result cannot contain duplicates.

select city from station where lower(substr(city,1,1)) not in ('a','e','i','o','u') and lower(substr(city,-1,1)) not in ('a','e','i','o','u')

-----------------creating new table - product

Create Table Product(
product_id int,
product_name varchar(50),
unit_price int
)

Alter Table Product
Add Primary key(product_id)

Describe Product

---------------------creating new table - sales---------------------

Create Table Sales(
seller_id int,
product_id int,
buyer_id int,
sale_date date,
quantity int,
price int,
constraint fk_product_id foreign key(product_id)
references Product(product_id)
)


Describe Sales

Insert into Product Values(1,'S8',1000),(2,'G4',800),(3,'iphone',1400)
Insert into Sales Values(1,1,1,'2019-01-21',2,2000),(1,2,2,'2019-02-17',1,800),(2,2,3,'2019-06-02',1,800),(3,3,4,'2019-05-13',2,2800)

select * from product
select * from sales

--17 Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive. Return the result table in any order.

select * from product where product_id not in(
select product_id from sales where sale_date not between '2019-01-01' and '2019-03-31')

-----------creating new tables -view----------------------

create table view(
article_id int,
author_id int,
viewer_id int,
view_date date
)

insert into view(article_id,author_id,viewer_id,view_date) values(1,3,5,'2019-08-01'),
(1,3,6,'2019-08-02'),(2,7,7,'2019-08-01'),(2,7,6,'2019-08-02'),(4,7,1,'2019-07-22'),(3,4,4,'2019-07-21'),
(3,4,4,'2019-07-21')

describe view

-- 18. Write an SQL query to find all the authors that viewed at least one of their own articles. Return the result table sorted by id in ascending order.

select distinct(author_id) as id from view where author_id = viewer_id order by author_id asc

-------creating delivery table---------

create table if not exists Delivery(
delivery_id int,
customer_id int,
order_date date,
customer_pref_delivery_date date,
constraint pk_delivery_id primary key(delivery_id)
)

insert into Delivery(delivery_id,customer_id,order_date,customer_pref_delivery_date) values(1,1,'2019-08-01','2019-08-02'),
(2,5,'2019-08-02','2019-08-02'),(3,1,'2019-08-11','2019-08-11'),
(4,3,'2019-08-24','2019-08-26'),
(5,4,'2019-08-21','2019-08-22'),
(6,2,'2019-08-11','2019-08-13');

select * from Delivery

--19 Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal places.
-- If the customer's preferred delivery date is the same as the order date, then the order is called immediately; otherwise, it is called scheduled.

select Round((sum(if(order_date = customer_pref_delivery_date,1,0)) / count(*)) * 100 ,2) as immediate_percentage from delivery


SELECT 
    ROUND(
        (SUM(IF(order_date = customer_pref_delivery_date, 1, 0)) / COUNT(*)) * 100, 
        2
    ) AS immediate_percentage
FROM Delivery;


--20 Write an SQL query to find the team size of each of the employees. Return result table in any order

create table employee(
employee_id int primary key,
team_id int
)

insert into employee value(1,8),(2,8),(3,8),(4,7),(5,9),(6,9)


select employee_id, count(*) over(partition by team_id) as team_size from employee order by employee_id


