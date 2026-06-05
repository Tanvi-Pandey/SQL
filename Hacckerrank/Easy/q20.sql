//Weather Observation Station 20

SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num, //no. of rows after sorting
           COUNT(*) OVER () AS total_rows //total no. of rows
    FROM STATION
) AS temp
WHERE row_num = CEIL(total_rows / 2); //find the middle position