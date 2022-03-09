CREATE TABLE IF NOT EXISTS "Car_Score"(
Car_ID TEXT PRIMARY KEY,
Racer_Turbo TEXT,
Racer_Supercharged TEXT,
Racer_Performance TEXT,
Racer_Horsepower TEXT,
Car_Overall TEXT,
Engine_Modifications TEXT,
Engine_Performance TEXT,
Engine_Chrome TEXT,
Engine_Detailing TEXT,
Engine_Cleanliness TEXT,
Body_Frame_Undercarriage TEXT,
Body_Frame_Suspension TEXT,
Body_Frame_Chrome TEXT,
Body_Frame_Detailing TEXT,
Body_Frame_Cleanliness TEXT,
Mods_Paint TEXT,
Mods_Body TEXT,
Mods_Wrap TEXT,
Mods_Rims TEXT,
Mods_Interior TEXT, 
Mods_Other TEXT,
Mods_ICE TEXT,
Mods_Aftermarket TEXT,
Mods_WIP TEXT,
Mods_Overall TEXT
, Total);
CREATE TABLE IF NOT EXISTS "Judges"(
Judge_ID TEXT, 
Judge_Name TEXT, 
Timestamp TEXT
);
CREATE TABLE IF NOT EXISTS "New_Judges"(
Judge_ID TEXT, 
Judge_Name TEXT, 
Car_Count TEXT,
First_Time TEXT,
Last_Time TEXT,
Average TEXT
);
CREATE TABLE IF NOT EXISTS "Rank"(
Rank TEXT,
CAR_ID TEXT PRIMARY KEY,
Year TEXT,
Make TXT,
Model TEXT,
Total TEXT
);
CREATE TABLE IF NOT EXISTS "Cars"(
CAR_ID TEXT PRIMARY KEY,
Year TEXT,
Make TEXT,
Model TEXT,
Name TEXT,
Email TEXT
);