CREATE DATABASE college2;
USE college2;

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
            
CREATE TABLE dept(
		id INT PRIMARY KEY,
        name VARCHAR(50));
        
CREATE TABLE teacher(
		id INT PRIMARY KEY,
        name VARCHAR(50),
        dept_id INT,
        FOREIGN KEY(dept_id) REFERENCES dept(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE);
        
INSERT INTO dept VALUES
                 (101,"English"),
                 (102,"IT");

INSERT INTO teacher VALUES
                 (101,"Adam",101),
                 (102,"Eve",102);

UPDATE dept SET id=103 WHERE id=102;