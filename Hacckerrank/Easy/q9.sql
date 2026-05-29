//Weather Observation Station 8

SELECT DISTINCT CITY                             //^ → starts with
                                                 //[AEIOUaeiou] → first character must be a vowel
                                                 //.* → any characters in between
                                                 //[AEIOUaeiou] → last character must be a vowel
                                                 //$ → ends with
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$';  