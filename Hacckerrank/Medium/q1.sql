SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') //CONCAT- joins 
FROM OCCUPATIONS                                   //LEFT(Occupation, 1) → gets the first letter of occupation.
ORDER BY Name;

SELECT CONCAT(
    'There are a total of ',
    COUNT(*),
    ' ',
    LOWER(Occupation),   //LEFT(Occupation, 1) → gets the first letter of occupation.
    's.'
)
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;  //COUNT(*) → counts occurrences of each occupation.
                                //GROUP BY Occupation → groups same occupations together.
                                //ORDER BY COUNT(*), Occupation → sorts by count ascending, then alphabetically if counts match