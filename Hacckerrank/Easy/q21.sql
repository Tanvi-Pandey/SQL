SELECT SUM(CITY.Population)
FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code /*where the join occurs*/
WHERE COUNTRY.Continent = 'Asia';