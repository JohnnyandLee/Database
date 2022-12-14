-- Use https://livesql.oracle.com/

--Create a table

CREATE TABLE Q3  
(processID CHAR(5) NOT NULL,  
step INTEGER NOT NULL, 
status CHAR(1) NOT NULL,  
PRIMARY KEY (processID, step));

--Insert data

INSERT INTO Q3 VALUES ('P100', 0, 'C');
INSERT INTO Q3 VALUES ('P100', 1, 'W');
INSERT INTO Q3 VALUES ('P100', 2, 'W');
INSERT INTO Q3 VALUES ('P201', 0, 'C');
INSERT INTO Q3 VALUES ('P201', 1, 'C');
INSERT INTO Q3 VALUES ('P333', 0, 'W');
INSERT INTO Q3 VALUES ('P333', 1, 'W');
INSERT INTO Q3 VALUES ('P333', 2, 'W');
INSERT INTO Q3 VALUES ('P333', 3, 'W');


--Show data
SELECT DISTINCT P1.processID
FROM Q3 P1 , Q3 P2
WHERE P1.step = 0 AND P1.status = 'C' AND P2.step = 1 AND P2.status = 'W' AND P1.processID = P2.processID;