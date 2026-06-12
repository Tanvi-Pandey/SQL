/*Inverted triangle*/

WITH RECURSIVE numbers AS ( /*creates a temp table called numbers*/
    SELECT 20 AS n  /*20 as base case for coloumn n*/
    UNION ALL
    SELECT n - 1  /*recusively making rows by n-1*/
    FROM numbers 
    WHERE n > 1
)
SELECT REPEAT('* ', n) AS pattern
FROM numbers;