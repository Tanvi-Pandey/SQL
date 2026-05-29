//Weather Observation Station 6

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%'
   OR CITY LIKE 'E%'
   OR CITY LIKE 'I%'
   OR CITY LIKE 'O%'
   OR CITY LIKE 'U%'
   OR CITY LIKE 'a%'
   OR CITY LIKE 'e%'
   OR CITY LIKE 'i%'
   OR CITY LIKE 'o%'
   OR CITY LIKE 'u%';


//better solution
SELECT DISTINCT CITY   //DISTINCT is used to avoid duplicate city names
FROM STATION 
WHERE CITY REGEXP '^[AEIOUaeiou]'; //REGEXP to match the pattern of city names that start with a vowel 
                                  // start (^) with any of the specified vowels. 