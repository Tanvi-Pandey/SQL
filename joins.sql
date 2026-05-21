CREATE DATABASE college;
USE college;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    mentor_id INT
);
       
INSERT INTO student VALUES
(101, 'adam', 103),
(102, 'bob', 101),
(103, 'casey', NULL);

CREATE TABLE course(
	   id INT PRIMARY KEY,
       course VARCHAR(50));
       
INSERT INTO course VALUES
       (102,"english"),
       (105,"math"),
       (103,"science"),
       (107,"computer science");

SELECT * FROM student;
SELECT * FROM course;

/*INNER JOIN*/
SELECT * FROM student as S
INNER JOIN course as C
ON s.id=c.id;

/*LEFT JOIN*/
SELECT * FROM student as S
LEFT JOIN course as C
ON s.id=c.id;

/*RIGHT JOIN*/
SELECT * FROM student as S
RIGHT JOIN course as C
ON s.id=c.id;

/*FULL JOIN*/
SELECT * FROM student as S
LEFT JOIN course as C
ON s.id=c.id
UNION
SELECT * FROM student as S
RIGHT JOIN course as C
ON s.id=c.id;

/*LEFT EXCLUSIVE JOIN*/
SELECT * FROM student as S
LEFT JOIN course as C
ON s.id=c.id
WHERE c.id IS NULL;

/*RIGHT EXCLUSIVE JOIN*/
SELECT * FROM student as S
RIGHT JOIN course as C
ON s.id=c.id
WHERE s.id IS NULL;

SELECT * FROM student as S
LEFT JOIN course as C
ON s.id=c.id
WHERE c.id IS NULL
UNION
SELECT * FROM student as S
RIGHT JOIN course as C
ON s.id=c.id
WHERE s.id IS NULL;

/*SELF JOIN*/
SELECT s1.name AS student_name,
       s2.name AS mentor_name
FROM student s1
LEFT JOIN student s2
ON s1.mentor_id = s2.id;