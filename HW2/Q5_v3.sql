-- Use https://livesql.oracle.com/

--Create a table

CREATE TABLE Q5
(instructorName CHAR(20) NOT NULL,
subjectName CHAR(30) NOT NULL,
PRIMARY KEY (instructorName, subjectName));

--Insert data

INSERT INTO Q5 VALUES ('Aleph', 'MIDI controllers');
INSERT INTO Q5 VALUES ('Aleph', 'Sound mixing');
INSERT INTO Q5 VALUES ('Aleph', 'Synthesis algorithms');
INSERT INTO Q5 VALUES ('Bit', 'EDM synthesis');
INSERT INTO Q5 VALUES ('Bit', 'Electronic Music Fundamentals');
INSERT INTO Q5 VALUES ('Bit', 'Sound mixing');
INSERT INTO Q5 VALUES ('CRC', 'EDM synthesis');
INSERT INTO Q5 VALUES ('CRC', 'Electronic Music Fundamentals');
INSERT INTO Q5 VALUES ('Dat', 'MIDI controllers');
INSERT INTO Q5 VALUES ('Dat', 'EDM synthesis');
INSERT INTO Q5 VALUES ('Dat', 'Electronic Music Fundamentals');
INSERT INTO Q5 VALUES ('Emscr', 'MIDI controllers');
INSERT INTO Q5 VALUES ('Emscr', 'Synthesis algorithms');
INSERT INTO Q5 VALUES ('Emscr', 'Electronic Music Fundamentals');
INSERT INTO Q5 VALUES ('Emscr', 'EDM synthesis');



--Create another table

CREATE TABLE Target( 
subjectName Char(30) NOT NULL, 
PRIMARY KEY(subjectName));


--Insert data

INSERT INTO Target VALUES ('Electronic Music Fundamentals');
INSERT INTO Target VALUES ('MIDI controllers');
INSERT INTO Target VALUES ('EDM synthesis');

--Show data

SELECT DISTINCT instructorName AS Instructor
FROM (SELECT Q5.instructorName FROM Q5, Target WHERE Q5.subjectName = Target.subjectName)
GROUP BY instructorName
HAVING count(*) = 3 

-- Create another table, and insert the requirements(Electronic Music Fundamentals, MIDI controllers, EDM synthesis)
-- First, I use subquery to join two table that Q5.subjectName = Target.subjectName
-- Second, the outer query will use GROUP BY and count(*) to see how many item a group have, if the number = 3, output the result.
 