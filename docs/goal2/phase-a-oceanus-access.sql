-- Goal 2 / Phase A: restore the three realm Oceanus entry destinations.
-- Target: OfflineDAoC SQLite world database (runtime/data/opendaoc.sqlite3.db).
--
-- These rows mirror the realm-specific Oceanus destinations in the official
-- Dawn-of-Light db-public dataset. They intentionally use the base teleporter
-- type (empty Type) so existing GameTeleporter-derived NPCs can resolve
-- ":Oceanus" for their destination realm.
--
-- IMPORTANT: stop the server and back up the database (and any -wal/-shm files)
-- before applying this migration. Do not modify a database while the server is
-- running.

BEGIN IMMEDIATE;

INSERT OR IGNORE INTO Teleport
    (Type, TeleportID, Realm, RegionID, X, Y, Z, Heading, LastTimeRowUpdated, Teleport_ID)
SELECT '', 'Oceanus', 1, 73, 271184, 539600, 8344, 645, '2000-01-01 00:00:00', 'alb_oceanus'
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 73);

INSERT OR IGNORE INTO Teleport
    (Type, TeleportID, Realm, RegionID, X, Y, Z, Heading, LastTimeRowUpdated, Teleport_ID)
SELECT '', 'Oceanus', 2, 30, 271184, 539600, 8344, 645, '2000-01-01 00:00:00', 'mid_oceanus'
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 30);

INSERT OR IGNORE INTO Teleport
    (Type, TeleportID, Realm, RegionID, X, Y, Z, Heading, LastTimeRowUpdated, Teleport_ID)
SELECT '', 'Oceanus', 3, 130, 271184, 539600, 8344, 645, '2000-01-01 00:00:00', 'hib_oceanus'
WHERE EXISTS (SELECT 1 FROM Regions WHERE RegionID = 130);

COMMIT;

-- Verification:
-- SELECT Type, TeleportID, Realm, RegionID, X, Y, Z, Heading, Teleport_ID
-- FROM Teleport
-- WHERE Teleport_ID IN ('alb_oceanus','mid_oceanus','hib_oceanus')
-- ORDER BY Realm;
--
-- Rollback (only for these Phase A rows):
-- DELETE FROM Teleport
-- WHERE Teleport_ID IN ('alb_oceanus','mid_oceanus','hib_oceanus');
