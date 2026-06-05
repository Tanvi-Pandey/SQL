//Weather Observation Station 15

SELECT ROUND(LONG_W, 4) //rounds off to 2 decimal places
FROM STATION
WHERE LAT_N = (
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
);