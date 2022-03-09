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




.mode csv
.output extract2.csv

WITH common_table_expression AS 
(SELECT * FROM Rank WHERE Make = ‘Acura’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Audi’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Bmw’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Chevy’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Chrysler’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Dodge’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Ford’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = 'Honda' ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Hyundai’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Infiniti’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Jeep’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Lexus’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Mazda’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Mercedes’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Mitsu’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Nissan’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ’Scion’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Subaru’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ’Toyota’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Volkswagen’ ORDER BY Total DESC Limit 3)
Union all
(SELECT * FROM Rank WHERE Make = ‘Volvo’ ORDER BY Total DESC Limit 3)

