-- I will be solving the HackerRank SQL problems in MySQL in this scratchpad.
--
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[aeiouAEIOU].*';

-- Query the list of CITY names ending with vowels (a, e, i, o, u)
-- from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^*.[aeiouAEIOU]$';

-- Query the list of CITY names from STATION which have vowels
-- (i.e., a, e, i, o, and u) as both their first and last characters.
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[aeiouAEIOU].*.[aeiouAEIOU]$';

-- Query the list of CITY names from STATION that do not start
-- with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT RLIKE '^[aeiouAEIOU].*';

-- Query the list of CITY names from STATION that do not end
-- with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT RLIKE '^*.[aeiouAEIOU]$';

-- Query the list of CITY names from STATION that do not
-- start with vowels and do not end with vowels. Your
-- result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT RLIKE '^[aeiouAEIOU].*|.*[AEIOUaeiou]$';

-- Query the Name of any student in STUDENTS who scored higher than  Marks.
-- Order your output by the last three characters of each name.
-- If two or more students both have names ending in the same last three
-- characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- SELECT Name FROM STUDENTS WHERE Marks>75 ORDER BY REGEXP_SUBSTR(Name, '\w{3}$'), ID ASC;
-- The RegEx substring did not work to order by. I'll try using -3 index.
SELECT Name FROM STUDENTS WHERE Marks>75 ORDER BY SUBSTRING(Name,-3), ID ASC;

-- Write a query that prints a list of employee names (i.e.: the name attribute)
-- from the Employee table in alphabetical order.
SELECT name FROM Employee ORDER BY name;

-- Given the CITY and COUNTRY tables, query the sum of the populations
-- of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(POPULATION) AS 'PopulationSum' FROM CITY
JOIN COUNTRY
