//Weather Observation Station 18

SELECT ROUND(
    ABS(MIN(LAT_N) - MAX(LAT_N)) +
    ABS(MIN(LONG_W) - MAX(LONG_W)),  //ABS converts a number to its positive value
    4
)
FROM STATION;