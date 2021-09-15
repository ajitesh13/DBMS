-- solution 1: 

SELECT DISTINCT CITY FROM STATION WHERE 
CITY LIKE 'A%A' OR
CITY LIKE 'A%E' OR
CITY LIKE 'A%I' OR
CITY LIKE 'A%O' OR
CITY LIKE 'A%U' OR
CITY LIKE 'E%A' OR
CITY LIKE 'E%E' OR
CITY LIKE 'E%I' OR
CITY LIKE 'E%O' OR
CITY LIKE 'E%U' OR
CITY LIKE 'I%A' OR
CITY LIKE 'I%E' OR
CITY LIKE 'I%I' OR
CITY LIKE 'I%O' OR
CITY LIKE 'I%U' OR
CITY LIKE 'O%A' OR
CITY LIKE 'O%E' OR
CITY LIKE 'O%I' OR
CITY LIKE 'O%O' OR
CITY LIKE 'O%U' OR
CITY LIKE 'U%A' OR
CITY LIKE 'U%E' OR
CITY LIKE 'U%I' OR
CITY LIKE 'U%O' OR
CITY LIKE 'U%U';

-- solution 2:
select distinct city from station 
where left(city,1) in ('a','e','i','o','u') 
and right(city, 1) in ('a','e','i','o','u')

-- solution 3(regex):