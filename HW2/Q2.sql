-- Use https://livesql.oracle.com/

--Create a table

CREATE TABLE Q2  
(studentID INTEGER NOT NULL,  
className CHAR(50) NOT NULL,  
grade CHAR(1) NOT NULL,  
PRIMARY KEY (studentID, className));


--Insert data

INSERT INTO Q2 VALUES (123, 'Synthesis algorithms', 'A');
INSERT INTO Q2 VALUES (123, 'EDM synthesis', 'B');
INSERT INTO Q2 VALUES (123, 'MIDI controllers', 'B');
INSERT INTO Q2 VALUES (662, 'Sound mixing', 'B');
INSERT INTO Q2 VALUES (662, 'EDM synthesis', 'A');
INSERT INTO Q2 VALUES (662, 'Electronic Music Fundamentals', 'A');
INSERT INTO Q2 VALUES (662, 'MIDI controllers', 'B');
INSERT INTO Q2 VALUES (345, 'MIDI controllers', 'A');
INSERT INTO Q2 VALUES (345, 'Electronic Music Fundamentals', 'B');
INSERT INTO Q2 VALUES (345, 'EDM synthesis', 'A');
INSERT INTO Q2 VALUES (555, 'EDM synthesis', 'B');
INSERT INTO Q2 VALUES (555, 'Electronic Music Fundamentals', 'B');
INSERT INTO Q2 VALUES (213, 'Electronic Music Fundamentals', 'A');

--Show data

SELECT className, COUNT(*) AS Total
FROM Q2
GROUP BY className
ORDER BY Total DESC;