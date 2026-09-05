# REFERENCE AUDIT

## Target version

This build targets the current stable Hearts of Iron IV 1.19.2 branch as of 2026-09-05. Paradox/Steam announced 1.19.3 for 2026-09-17, so `supported_version` is intentionally `1.19.*`; runtime verification must be repeated when 1.19.3 becomes public.

Official version references consulted:
- Steam Community announcement, **Thunder at our Gates | Patch 1.19.2**, 2026-06-30. It explicitly identifies 1.19.2 as the default public version.
- Steam Community announcement, **Studio GoldUpdate | September 2026**, stating the planned 1.19.3 release date of 2026-09-17.

## Large-mod source audit

No source code below was copied wholesale. The files were read to confirm current Paradox script patterns and large-mod architecture.

### Kaiserreich
Repository: `Kaiserreich/Kaiserreich-HOI4`, inspected commit `00f64443a8a3ec4ae0cc78179efade3cb41e1946`.

Files inspected:
- `history/general/taog_hq_template.txt` — current Army HQ template structure. Confirmed `is_army_hq = yes`, `hq_infantry`, and `hq_support_company` usage.
- `common/ai_templates/armour.txt` — confirmed the new `regimental_support` block and `anti_air_battery` usage.
- `common/ai_templates/marines.txt` — confirmed `field_guns` / `fire_support` regimental support patterns.
- `common/ai_equipment/generic_tank.txt` — confirmed `modern_tank_chassis_1` designer module slot names.
- `common/ai_equipment/planes_fighter.txt` — confirmed `small_plane_airframe_4`, jet-engine and aircraft-cannon module slot names.
- `history/units/IRE.txt` — confirmed `create_equipment_variant` + `add_equipment_production` OOB structure.
- `common/bookmarks/the_gathering_storm.txt` — bookmark structure and country recommendation blocks.

Architecture lessons applied: keep OOB, designer variants and production connected; use modern HQ/regimental support syntax rather than legacy-only templates; keep the story tree distinct from military/industrial branches.

### Millennium Dawn
Repository: `MillenniumDawn/Millennium-Dawn`, inspected commit `71dd0f84ac57fc5c3551292062e84074ee05f6ed`.

Files inspected:
- `tools/validation/validate_focus_tree.py` — large-project focus validation approach and duplicate/reference awareness.
- `common/national_focus/05_aln.txt` — modern-era focus-tree organization.
- `history/units/USA_2000_nonbba.txt` — modern-start OOB production-line pattern.
- `.claude/docs/oob-variants-reference.md` — documented OOB variant/production conventions.
- representative state files such as `history/states/698-Kyiv.txt` — use of dynamic modifiers as system state rather than proliferating visible national spirits.

Architecture lessons applied: separate scenario data from systems, explicitly connect starting variants to production, and document/validate focus references rather than relying on visual inspection alone.

### Equestria at War
Repository: `EaW-Team/equestria_dev`, inspected commit `20c5c05c3436a3c6ed5f04044eca713796c4b7c3`.

Files inspected:
- `history/units/MTO_1007.txt`
- `history/units/MDL_army.txt`
- `history/units/PYT_1007.txt`

These current OOB files confirmed that `regimental_support = { field_guns = { x = ... y = ... } }` is valid in division templates.

Architecture lesson applied: make the new support row part of actual starting templates rather than merely mentioning it in documentation.

### Kaiserredux
Repository: `JoeBidenWhatAreYouHiding/kx`, inspected commit `00fdb6be1621c00cbf2d5be42aa15440c9f7c319`.

Files inspected:
- `events/FA_Suidwes.txt`, `events/Shan.txt`, `events/Oman.txt` — event chains and delayed cross-event calls.
- `common/ideas/FIU_ideas.txt`, `common/ideas/Shan_ideas.txt` — idea organization.

Architecture lesson applied: narrative events should be chained intentionally and should carry state changes, not exist as isolated flavour popups.

## Vanilla-map/state reference limitation

The current build does **not** include a custom `map/` directory. State overrides were newly authored, using the established vanilla state IDs and province geometry for Japan. Province membership was cross-checked against public game-file mirrors and current large-mod state files where available, but an exact local copy of Paradox's 1.19.2 vanilla `history/states` directory was not available in the execution environment. This is therefore a runtime-verification item, not claimed as fully verified.

## What was deliberately not imported

- No old user-mod `map/` files.
- No old user-mod `history/states/` file content.
- No old focus/event/idea code treated as canonical.
- No setting text merely because a previous AI produced it.
- No large-mod code copied verbatim beyond ordinary Paradox syntax patterns.
