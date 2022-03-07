ALTER TABLE Car_Score
ADD COLUMN Total

UPDATE Car_Score SET Total = Racer_Turbo + Racer_Supercharged + Racer_Performance + Racer_Horsepower + Car_Overall + Engine_Modifications + Engine_Performance + Engine_Chrome + Engine_Detailing + Engine_Cleanliness + Body_Frame_Undercarriage + Body_Frame_Suspension + Body_Frame_Chrome + Body_Frame_Detailing + Body_Frame_Cleanliness + Mods_Paint + Mods_Body + Mods_Wrap + Mods_Rims + Mods_Interior + Mods_Other + Mods_ICE + Mods_Aftermarket + Mods_WIP + Mods_Overall;


CREATE TABLE Ranked(
CAR_ID TEXT PRIMARY KEY,
Year TEXT,
Make TXT,
Model TEXT,
Total TEXT
);

INSERT INTO Ranked
SELECT Cars.Car_ID, Cars.Year, Cars.Make, Cars.Model, Car_Score.Total
FROM Cars
INNER JOIN Car_Score ON Car_Score.Car_ID = Cars.Car_ID;

SELECT * FROM Ranked ORDER BY cast(Total as int) DESC;


CREATE TABLE Temp(
CAR_ID TEXT PRIMARY KEY,
Year TEXT,
Make TXT,
Model TEXT,
Total TEXT
);

INSERT INTO Temp
SELECT Car_ID, Year, Make, Model, Total FROM Ranked ORDER BY cast(Total as int) DESC;


CREATE TABLE Temp2(
Rank TEXT,
CAR_ID TEXT PRIMARY KEY,
Year TEXT,
Make TXT,
Model TEXT,
Total TEXT
);

INSERT INTO Temp2
SELECT ROWID, Car_ID, Year, Make, Model, Total FROM Temp;
 
DROP TABLE Temp;
DROP TABLE Ranked;
ALTER TABLE Temp2 RENAME TO Ranked;
