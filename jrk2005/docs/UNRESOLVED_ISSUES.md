# UNRESOLVED ISSUES

These items are deliberately left explicit instead of being filled with invented lore or false QA claims.

## P0 — must be verified in the game client

### 1. Exact 1.19.2 vanilla state/province compatibility
The build uses established vanilla Japan state IDs and province membership. However, an exact local copy of Paradox's 1.19.2 `history/states` files was unavailable. Confirm every overridden state against the installed 1.19.2 files and `error.log`.

### 2. Army HQ/Regimental Support runtime load
The syntax is taken from current 1.19-compatible large-mod source, but the actual client must confirm all required technologies/DLC gates are satisfied at a 2005 start, including the added HQ-specific support units.

### 3. Designer variants and starting air wings
Tank/fighter module IDs and BBA air-wing OOB syntax were source-checked, but client validation is still needed for technology/module availability, roles, variant matching and actual starting deployment.

### 4. JAP cleanup at scenario start
The startup event absorbs remaining JAP-owned territory into EJP and releases/transfers legacy colonial holdings where scripted. This needs an in-engine ownership pass to ensure no legacy 1936 Japanese overseas holding remains unintentionally attached to EJP.

### 5. Division Commander / Field Officer behavior
Starting divisions intentionally rely on the native Field Officer / Division Commander system. Confirm that 1.19.2 creates/displays field officers normally and that promotion to general is unaffected by the custom Army HQ templates.

## P1 — required for production-quality release

### 6. Final art assets
The package generates technically valid simple TGA country flags at build time. Final art-directed flags, character portraits, focus art and event art are still required for a production-quality visual release.

### 7. Full 2005 external world
The Japanese theatre is rebuilt, but all non-Japanese countries have not yet been converted into a coherent 2005 global order. Until that work exists, the scenario should be treated as a Japan-focused prototype rather than a finished global total conversion.

### 8. Final OOB balance
Division count, factory count, stockpiles, air-wing sizes and production allocations need observation in actual 1.19.2 combat. Current values are functional first-pass design values, not final balance.

### 9. External-faction isolation
The clean build does not yet impose a hard scripted rule preventing EJP/WJP from ever joining outside factions. AI strategy strongly centers the bilateral conflict, but global diplomacy still needs an in-engine pass before a hard isolation rule is added. This remains unresolved rather than forcing a rule change that could not be safely committed through the current connector path.

## Canon intentionally unresolved

- formal name of the Toki fusion facility;
- formal name of the linked high-firepower laser base;
- exact named unit/person responsible for each opening action;
- exact tactical sequence inside each pre-war operation;
- unconfirmed East-specific modern vehicle/aircraft designations.

These should stay unresolved until directly established by the project owner.

## Future-version issue

Paradox announced 1.19.3 for 2026-09-17. After that date, re-run the runtime matrix and update `supported_version`/QA notes only after confirming compatibility.
