.mode csv Temp2
.import Data/data.csv Temp2


CREATE TABLE New_Judges(
Judge_ID TEXT, 
Judge_Name TEXT, 
Timestamp TEXT
);

INSERT INTO New_Judges
SELECT Judge_ID, Judge_Name, Timestamp FROM Temp2;

DROP TABLE Judges;
ALTER TABLE New_Judges RENAME TO Judges;
DROP TABLE Temp2;



CREATE TABLE New_Judges(
Judge_ID TEXT, 
Judge_Name TEXT, 
Car_Count TEXT,
First_Time TEXT,
Last_Time TEXT
);

INSERT INTO New_Judges
SELECT Judge_ID, Judge_Name, COUNT(*) as Car_Count, MIN(Timestamp), MAX(Timestamp) FROM Judges GROUP BY Judge_Name;

CREATE TABLE  Temp2(
Judge_ID TEXT, 
Judge_Name TEXT, 
Car_Count TEXT,
First_Time TEXT,
Last_Time TEXT,
Average TEXT
);

INSERT INTO Temp2
SELECT Judge_ID, Judge_Name, Car_Count, First_Time, Last_Time, (SUBSTR(First_Time, 10, 14) + SUBSTR(Last_Time, 10, 14))/Car_Count FROM New_Judges GROUP BY Judge_Name;

INSERT INTO New_Judges
SELECT Judge_Name, (SUBSTR(First_Time, 10, 14) + SUBSTR(Last_Time, 10, 14))/Car_Count FROM New_Judges;

DROP TABLE New_Judges;
ALTER TABLE Temp2 RENAME TO New_Judges;
DROP TABLE Temp2;
