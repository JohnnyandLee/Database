-- Use https://livesql.oracle.com/

--I will redisign the table as follows:

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
occupyTimeSlice INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, occupyTimeSlice));

--If team A wants to use room 1 for 7~9AM. Need to insert twice.
--Team A wants to use room 1 for time period 7 - 8
INSERT INTO ProjectRoomBookings VALUES (1, 7, 'A');

--Team A wants to use room 1 for time period 8 - 9
INSERT INTO ProjectRoomBookings VALUES (1, 8, 'A');

--Since I set primary key as roomNum + occupyTimeSlice, I can solve two issues listed on the Q1 by using the method mentioned above.

INSERT INTO ProjectRoomBookings VALUES (1, 8, 'B');

INSERT INTO ProjectRoomBookings VALUES (2, 8, 'B');

INSERT INTO ProjectRoomBookings VALUES (1, 7, 'C');

INSERT INTO ProjectRoomBookings VALUES (3, 7, 'C');


SELECT * FROM ProjectRoomBookings;