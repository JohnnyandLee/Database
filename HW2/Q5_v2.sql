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


--Show data

SELECT DISTINCT T1.instructorName AS Instructor
FROM (SELECT instructorName FROM Q5 WHERE subjectName = 'Electronic Music Fundamentals')T1, (SELECT instructorName FROM Q5 WHERE subjectName = 'MIDI controllers')T2, (SELECT instructorName FROM Q5 WHERE subjectName = 'EDM synthesis')T3
WHERE T1.instructorName = T2.instructorName AND T2.instructorName = T3.instructorName

-- I use subqueries inside FROM to get the name lists(3 different lists) of instructor can teach 'Electronic Music Fundamentals', 'MIDI controllers' and 'EDM synthesis'.
-- If I choose the intersection, the result will meet the requirements.
 