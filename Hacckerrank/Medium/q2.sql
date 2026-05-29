SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,  //CASE WHEN places names into the correct column (Doctor, Professor, Singer, Actor).
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer, //MAX() helps pivot rows into columns.
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (  //ROW_NUMBER() assigns a row number to each name within the same occupation, sorted alphabetically
            PARTITION BY Occupation
            ORDER BY Name
        ) AS rn
    FROM OCCUPATIONS
) AS temp
GROUP BY rn   //GROUP BY rn aligns the first doctor with the first professor, singer, actor, etc.
ORDER BY rn;   //Missing values automatically appear as NULL.