-- I will be solving the HackerRank SQL problems in MySQL in this scratchpad.
--
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY  RLIKE '^[aeiouAEIOU].*'
