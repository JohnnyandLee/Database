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

SELECT DISTINCT P1.instructorName AS Instructor
FROM Q5 P1 , Q5 P2, Q5 P3
WHERE P1.instructorName = P2.instructorName AND P2.instructorName = P3.instructorName AND P1.subjectName = 'Electronic Music Fundamentals'
      AND P2.subjectName = 'MIDI controllers' AND P3.subjectName = 'EDM synthesis';

-- I refer the same table three times, give names to them as P1, P2, P3.
-- Since the selected instructor needs to teach three class, instructor's name must occur three times.
-- What they can teach must meet the requirements. (Electronic Music Fundamentals, MIDI controllers, EDM synthesis)