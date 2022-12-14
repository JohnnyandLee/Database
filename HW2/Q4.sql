-- Use https://livesql.oracle.com/

--Create a table

CREATE TABLE Q4  
(instructorID INTEGER NOT NULL,
instructorFname CHAR(20) NOT NULL,
instructorLname CHAR(20) NOT NULL,
courseName CHAR(30) NOT NULL, 
studentNum  INTEGER NOT NULL, 
hourly_rate INTEGER NOT NULL,
PRIMARY KEY (instructorID, courseName));

--Insert data

INSERT INTO Q4 VALUES ('1', 'Johnny', 'Walker', 'Math', 50, 30);
INSERT INTO Q4 VALUES ('1', 'Johnny', 'Walker', 'English', 40, 30);
INSERT INTO Q4 VALUES ('2', 'Mike', 'Trout', 'Baseball', 100, 30);
INSERT INTO Q4 VALUES ('3', 'Stephen', 'Curry', 'Basketball', 80, 30);
INSERT INTO Q4 VALUES ('4', 'Showhei', 'Ohtani', 'Pitching', 95, 30);
INSERT INTO Q4 VALUES ('5', 'Emma', 'Watson', 'Movie', 85, 30);
INSERT INTO Q4 VALUES ('5', 'Emma', 'Watson', 'Singing', 70, 30);
INSERT INTO Q4 VALUES ('6', 'Claude', 'Monet', 'Art', 82, 30);
INSERT INTO Q4 VALUES ('7', 'David', 'Copperfield', 'Magic', 87, 30);
INSERT INTO Q4 VALUES ('7', 'David', 'Copperfield', 'Show', 89, 30);


--Show data

SELECT instructorFname, instructorLname, BONUS
FROM(SELECT instructorFname, instructorLname, SUM(studentNum) * AVG(hourly_rate) * 0.1 AS BONUS
FROM Q4
GROUP BY instructorFname, instructorLname)
WHERE BONUS = (SELECT MAX(BONUS) 
FROM (SELECT instructorFname, instructorLname, SUM(studentNum) * AVG(hourly_rate) * 0.1 AS BONUS
FROM Q4
GROUP BY instructorFname, instructorLname))