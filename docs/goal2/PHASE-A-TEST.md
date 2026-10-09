# Goal 2 — Phase A Oceanus access test

Purpose: prove that the existing OfflineDAoC 0.35 server/client can enter the three realm Atlantis regions before importing ToA encounters or world population.

## What Phase A changes

`phase-a-oceanus-access.sql` restores the three realm-specific Oceanus destinations from the Dawn of Light public database:

- Albion -> Region 73
- Midgard -> Region 30
- Hibernia -> Region 130

All three use the DOL Oceanus coordinates `271184, 539600, 8344` with heading `645`.

The current `LiveTeleporter` source already resolves normal `Teleport` rows with an empty `Type`, so no teleporter-engine change is required for this test. Its dialogue currently does not advertise Oceanus (the source itself has a `Need to fix ... Oceanus for all realms` note), but whispering `Oceanus` to the realm LiveTeleporter should resolve the new destination.

## Safety

1. Stop the OfflineDAoC server completely.
2. Back up `runtime/data/opendaoc.sqlite3.db` and, if present, its matching `-wal` and `-shm` files.
3. Apply `docs/goal2/phase-a-oceanus-access.sql` only to the disposable Goal 2 test copy.
4. Do not apply this migration to the normal playable installation yet.

## Player test

For the realm being tested:

1. Start the Goal 2 test server.
2. Log in with a normal player.
3. Find the realm `LiveTeleporter` (`Master Visur`, `Stor Gothi Annark`, or `Channeler Glasny`).
4. Interact with the teleporter, then whisper `Oceanus` even though Oceanus is not yet listed in the menu.
5. Confirm that the client loads the expected Atlantis region instead of receiving `This destination is not available.`
6. Record the region/zone name and whether water, terrain and static geometry load correctly.

## Companion test

After the player has successfully entered Atlantis:

1. Spawn one temporary companion before teleporting and test whether it follows/reappears correctly after the player's region change.
2. Repeat by spawning the companion after arriving in Oceanus.
3. Confirm group membership, bot level/equipment, follow state and combat behavior remain intact.

Do not attempt ToA encounters yet. The Oceanus world is expected to be sparsely populated in the current 0.35 database.

## Pass criteria

Phase A passes when at least one realm can enter its Atlantis region reliably, return to the normal world, and use a spawned companion without server errors or a stuck bot/group state.

After the first realm passes, repeat Albion/Midgard/Hibernia. Then we can expose Oceanus in the normal teleporter dialogue and begin the controlled Atlantis population import.
