-- Goal 2 / Phase B: READ-ONLY Hesperos population inventory.
-- Run in DB Browser for SQLite on the isolated Goal 2 test database.
-- Do not execute imports until donor rows and schema mappings are reviewed.
-- Hibernia Oceanus region = 130; other realms = 73, 30.
-- First check the table columns in DB Browser > Database Structure:
PRAGMA table_info('Mob');
PRAGMA table_info('NpcTemplate');
PRAGMA table_info('Teleport');
PRAGMA table_info('JumpPoint');
PRAGMA table_info('Regions');
PRAGMA table_info('Zone');
-- Run each SELECT individually in DB Browser to see its results.
SELECT Region, COUNT(*) AS MobCount FROM Mob WHERE Region IN (30,73,130) GROUP BY Region ORDER BY Region;
SELECT * FROM Mob WHERE Region = 130 LIMIT 30;
SELECT * FROM Teleport WHERE RegionID IN (30,73,130) ORDER BY RegionID, TeleportID LIMIT 50;
-- If a query reports 'no such column', stop and inspect the PRAGMA output;
-- do not rename database columns or modify the world database.
