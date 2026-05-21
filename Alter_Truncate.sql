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
            
SELECT * FROM student; 

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age ;

ALTER TABLE student 
RENAME stu;

/* Chnages column name,data type needs to be mentioned evem if it's tha same*/
ALTER TABLE student                     
CHANGE COLUMN roll_no id INT PRIMARY KEY;   

/*change in contsraint or datatype*/
ALTER TABLE student
MODIFY COLUMN id VARCHAR(5);

TRUNCATE TABLE student; /*diff bw DROP TABLE- deletes the entire table
                                  TRUNCATE TABLE- dtelets the content of the table */