# Goal 2 — ToA / Catacombs restoration plan

Goal 2 keeps OfflineDAoC 0.35 as the foundation and restores post-SI PvE systems/content while preserving companion bots, autonomous gamebots, and solo-play behavior.

## Branch

All Goal 2 implementation work belongs on `TOA`. Keep `main` as the clean upstream baseline and `Development` for unrelated development work.

## Donor/reference sources

Primary donor/reference sources:

- `Dawn-of-Light/DOLSharp` `master`
- `Dawn-of-Light/db-public`

Compatibility references:

- `OpenDAoC/OpenDAoC-Core`
- `OpenDAoC/OpenDAoC-Database`

## Current findings

OfflineDAoC already retains substantial expansion infrastructure inherited from DOL/OpenDAoC, including:

- Master Level spell handlers
- artifact database models
- Atlantis NPC classes and Djinn teleporters
- Catacombs-style Adventure Wing instance support
- expansion-aware region/client handling

The major missing area identified so far is higher-level ToA gameplay/content, especially the `GameServer/quests/Atlantis` encounter tree and associated world/database population.

## Implementation order

### Phase A — Atlantis world access

1. Inventory ToA region/zone/jump-point data in current OfflineDAoC database/source.
2. Compare against DOLSharp/db-public.
3. Restore the minimum data/code required to enter Oceanus/Atlantis safely.
4. Verify region transitions, doors, water, Djinn teleporters, and return travel.
5. Verify companion and autonomous bot behavior during ToA region changes.

### Phase B — Master Level framework

1. Inventory current ML persistence, packet/UI support, abilities, and battlegroup credit.
2. Restore missing ML progression/credit pieces.
3. Add targeted regression tests.

### Phase C — Artifacts

1. Restore artifact manager/runtime lifecycle where missing.
2. Restore artifact, artifact bonus, and artifact/item data.
3. Restore scholars, scroll/book flow, leveling, abilities, and encounter credit.

### Phase D — ML and artifact encounters

Port encounters in small, testable groups. Avoid bulk-copying old encounter code without adapting it to current ECS/timer/database APIs.

### Phase E — Catacombs

Restore regions, obelisks, adventure wings/instances, mobs, loot, quests, travel, and required database records.

### Phase F — solo/bot compatibility

Run a dedicated pass for `/spawn` companions and autonomous gamebots: zoning, following, pets, encounter credit, ML/artifact progression, pathfinding, and instancing.

## Safety rules

- Do not modify or deploy over the playable installation during source research.
- Do not import a played database into GitHub.
- Keep changes small and reversible.
- Add tests before or with behavioral changes where practical.
- Automated tests and in-game validation are reported separately.
