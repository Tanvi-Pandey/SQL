CREATE DATABASE college1;
USE college1;

CREATE TABLE student(
		roll_no INT PRIMARY KEY,
        name VARCHAR(50),
        marks INT NOT NULL,
		grade VARCHAR(1),
        city VARCHAR(50));

INSERT INTO student (roll_no,name,marks,grade,city) VALUES
			(101,"anil",78,"C","Pune"),
            (102,"bumika",93,"A","Mumbai"),
            (103,"chetan",85,"B","Mumbai"),
            (104,"dhruv",96,"A","Delhi"),
            (105,"enamuel",12,"F","Delhi"),
            (106,"farah",82,"B","Delhi");
            
SELECT name,marks FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks>80 AND city="Mumbai";

SELECT * FROM student WHERE marks+10>100;

SELECT * FROM student WHERE marks>75 LIMIT 3;

SELECT * FROM student ORDER BY marks ASC;

SELECT AVG(marks) FROM student;

SELECT city,avg(marks) FROM student GROUP BY city ORDER BY avg(marks);

SELECT city,count(roll_no) FROM student GROUP BY city HAVING MAX(marks)>90;

SELECT city FROM student WHERE grade="A" GROUP BY city HAVING MAX(marks)>=93 ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;
UPDATE student SET grade="O" WHERE grade="A";

DELETE FROM student WHERE marks<33;