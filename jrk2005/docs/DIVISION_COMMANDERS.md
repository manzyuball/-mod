# DIVISION COMMANDERS / FIELD OFFICERS

## Current-system handling

The modern HOI4 division-level commander system is the **Field Officer / Division Commander** system. Current source documentation/localisation in Millennium Dawn and Equestria at War confirms the promotion workflow (division commander → general) and the `field_officer_promotion_penalty` modifier. Engine effect documentation exposes `reseed_division_commander`, but that is a numeric reseed/debug-style effect rather than a normal named-character OOB declaration.

For this rebuild, starting divisions therefore use the native engine-managed division commander system instead of faking each field officer as a `corps_commander` character. The named strategic commanders currently represented in `common/characters/JRK_characters.txt` are:

- 霧雨魔理沙 — East, corps-level commander.
- 博麗霊夢 — West, corps-level commander.

The engine remains responsible for each division's field officer and the normal promotion path. This deliberately avoids inventing unsupported named division commanders or using a legacy pseudo-general workaround.

## Runtime QA

In 1.19.2 with the current DLC set:
1. select each starting division;
2. verify that the division commander/field-officer UI is present;
3. allow divisions to gain combat experience;
4. verify promotion to general works normally;
5. confirm the Army HQ deployment system remains independent of field-officer promotion.

If a future canonical OOB supplies exact named division commanders, implement those only after verifying a supported 1.19 script path rather than replacing the native system with invented character entries.
