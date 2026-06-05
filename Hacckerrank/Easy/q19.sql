//Weather Observation Station 19

SELECT ROUND(
    SQRT( //SQRT- root
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) +  //Power(x,2)-x to power 2 
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ),
    4
)
FROM STATION;