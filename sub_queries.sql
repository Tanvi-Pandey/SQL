CREATE DATABASE college;
USE college;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO student (rollno, name, marks)
VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

SELECT name,marks
FROM student 
WHERE marks > (SELECT AVG (marks) FROM student);

SELECT name,rollno 
FROM student 
WHERE rollno IN(
      SELECT rollno FROM student
      WHERE rollno % 2 = 0);