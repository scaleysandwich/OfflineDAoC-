-- Goal 2 / Phase B1: controlled Hibernia Hesperos Haven population slice.
-- Apply only to the stopped, disposable Goal 2 test server database.
-- Source: Dawn-of-Light db-public Toa_Hib Region 130 records.
-- No encounters, boats/path data, merchants, or hostile mobs are included.

BEGIN IMMEDIATE;

-- Rin
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016665', 'Rin', '', 276738, 540496, 8344, 1456, 130, 3, 286, 54, 52, 'DOL.GS.GameNPC', 60165322, '8efaa26b-5f1a-4437-9430-5d49b4131ad2', NULL, -1, 60, 800, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60165322);

-- Ryley
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016668', 'Ryley', 'Recharger', 275713, 541188, 8344, 3538, 130, 3, 355, 51, 50, 'DOL.GS.Recharger', 60165498, '99bc8661-5fe8-4c07-a5ae-d306bbfe7c2e', NULL, -1, 0, 0, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60165498);

-- Sage Kelleigh
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016670', 'Sage Kelleigh', '', 274674, 540001, 8376, 11, 130, 3, 376, 54, 53, 'DOL.GS.GameNPC', 60165531, 'dbfe9023-ad27-4234-adac-5a19b485f199', NULL, -1, 60, 800, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60165531);

-- Laoghaire
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016671', 'Laoghaire', 'Vault Keeper', 273920, 538597, 8358, 4061, 130, 3, 370, 49, 50, 'DOL.GS.GameVaultKeeper', 60163117, '8418b5aa-aa09-4009-ac0d-db57770ff360', NULL, -1, 0, 0, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60163117);

-- Baodan
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016672', 'Baodan', 'Healer', 275457, 538619, 8358, 466, 130, 3, 380, 52, 50, 'DOL.GS.GameHealer', 60158253, '7ca9a08a-b7fc-4244-af0b-11c600b06ba7', NULL, -1, 0, 0, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60158253);

-- Wicoessa
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016673', 'Wicoessa', '', 270309, 541013, 8344, 853, 130, 3, 329, 48, 55, 'DOL.GS.GameNPC', 60167926, '3f65bf47-d72a-4b76-bae4-44e9fdc1d09d', NULL, -1, 60, 800, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60167926);

-- Hero Aydyn
INSERT OR IGNORE INTO Mob
(Mob_ID, Name, Guild, X, Y, Z, Heading, Region, Realm, Model, Size, Level, ClassType, NPCTemplateID, EquipmentTemplateID, ItemsListTemplateID, RespawnInterval, AggroLevel, AggroRange, FactionID, Speed, LastTimeRowUpdated, Race, BodyType, HouseNumber, PackageID, Gender, Flags, PathID, Brain, OwnerID, RoamingRange)
SELECT '100016674', 'Hero Aydyn', '', 275568, 541346, 8344, 3948, 130, 3, 742, 49, 70, 'DOL.GS.GameNPC', 60162096, '4b206904-db1c-49d2-8923-64980dd1e760', NULL, -1, 60, 800, 0, 191, '2000-01-01 00:00:00', 0, 0, 0, 'Toa_Hib', 0, 0, NULL, NULL, '', 0
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130)
  AND EXISTS (SELECT 1 FROM NpcTemplate WHERE TemplateId = 60162096);

COMMIT;

-- Verification:
-- SELECT Mob_ID, Name, Guild, ClassType, Region, Realm, X, Y, Z
-- FROM Mob
-- WHERE Mob_ID IN ('100016665','100016668','100016670','100016671','100016672','100016673','100016674')
-- ORDER BY CAST(Mob_ID AS INTEGER);
--
-- Expected count: 7 rows.
--
-- Rollback:
-- DELETE FROM Mob
-- WHERE Mob_ID IN ('100016665','100016668','100016670','100016671','100016672','100016673','100016674');
