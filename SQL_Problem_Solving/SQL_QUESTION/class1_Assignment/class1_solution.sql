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

