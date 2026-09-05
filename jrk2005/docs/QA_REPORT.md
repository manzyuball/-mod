# QA REPORT

## QA status

**Source-level implementation complete for the current 0.1.0 Japanese-theatre build. Runtime QA in Hearts of Iron IV 1.19.2 is still required.**

The execution environment used for this work could access/write GitHub source but could not launch Hearts of Iron IV or reliably run local shell/Python tooling. Accordingly, no claim is made that `error.log` is clean.

## Source checks performed

### Version/API pattern review
- Targeted current public version: 1.19.2 as of 2026-09-05.
- Army HQ syntax cross-checked against current Kaiserreich TAOG HQ definitions.
- HQ-specific support units cross-checked against current Kaiserreich/EaW source.
- Regimental Support syntax cross-checked against Kaiserreich and Equestria at War current source.
- Native Field Officer / Division Commander UI/promotion references cross-checked against current Millennium Dawn/EaW documentation/localisation.
- NSB tank designer slot names cross-checked against current Kaiserreich equipment design source.
- BBA fighter designer slot names and air-wing OOB format cross-checked against current Kaiserreich source.
- Production-line syntax cross-checked against Kaiserreich and Millennium Dawn OOB source.

### Content/reference review
- EJP/WJP tags have country definition files and country history files.
- Both country histories reference existing new OOB filenames.
- Every custom dynamic modifier used by focus/event/decision code is defined.
- Every custom idea used in starting country history/focus code is defined.
- Outbreak event IDs are in the `JRK` namespace.
- The East outbreak focus chain references events that are defined.
- The West response tree uses defined ideas/modifiers.
- Japanese localisation contains the current focus/event/decision names and descriptions.
- Debug filming decisions have zero AI weight and are gated behind `is_debug = yes`.
- The packaging workflow generates all EJP/WJP base and ideology flag variants in normal/medium/small TGA sizes.

### Story/canon review
- 魔理沙 is East.
- 霊夢 is West.
- 二ッ岩マミゾウ is not part of gameplay content.
- 「松代統制」 and 「東京朝」 are not used as gameplay/localisation canon.
- Outbreak order is reactor attack → linked laser-base seizure → air-defence hack → Alps breakthrough.
- Unconfirmed formal facility names and operational personnel are not invented.

### Spirit-budget review
- East starts at 4 counted items (3 ideas + 1 country dynamic modifier).
- West starts at 3.
- Stage modifiers replace earlier stages where intended.
- Timed operational effects expire.
- Designed peak remains below 8.

### Performance review
- No `on_daily` loop.
- No `on_weekly` loop.
- No every-country recurring scan.
- Opening sequence is triggered once through focuses/events.

## Automated build validation

GitHub Actions checks the packaged source on every build for:
- all required documentation;
- absence of a custom `map/` directory;
- gameplay/localisation absence of the rejected terms 「松代統制」「東京朝」「二ッ岩マミゾウ」;
- brace balance in script text;
- duplicate EJP/WJP focus IDs;
- the intended Japanese state-override set.

A successful package includes `BUILD_VALIDATION.txt` containing the validated commit SHA and an explicit note that in-engine runtime testing remains outstanding.

## Runtime test matrix required

1. Start 2005 bookmark as EJP.
2. Start 2005 bookmark as WJP.
3. Check `error.log` immediately after loading.
4. Confirm generated EJP/WJP TGA flags load in country, diplomacy and map UI; confirm missing portraits safely use fallback art.
5. Verify every overridden Japanese state resolves to current 1.19.2 vanilla province geometry.
6. Verify starting divisions spawn at valid owned province IDs.
7. Open division designer and confirm Army HQ template is recognized as an HQ and its HQ-specific supports load.
8. Verify Regimental Support row entries display and do not become missing battalions.
9. Verify each starting division receives the native Division Commander / Field Officer UI and the normal promotion path works.
10. With NSB enabled: verify both tank variants exist and their production lines are active.
11. With BBA enabled: verify both fighter variants exist, their production lines are active, and the starting air wings use the intended variants.
12. Complete the East outbreak focus chain and verify event order.
13. Launch with `-debug` and reproduce the same four stages with the filming decisions.
14. Confirm WJP receives the cyber modifier and can remove it by decision.
15. Confirm declaration of war fires exactly once at 日本アルプス大突破.
16. Confirm modifier count never exceeds 8 during the scripted crisis.
17. Run AI-vs-AI until at least 2006-01-01 and inspect log growth/performance and East/West production choices.
18. Repeat after 1.19.3 releases; patch-specific fixes must be applied before changing QA status to runtime-clean.

## Known likely log warnings / incomplete polish

- Final custom character portraits and focus/event artwork are not yet supplied.
- Build-generated flags are functional package assets but still need in-engine visual confirmation and later art-direction polish.
- The surrounding world is not yet a full modern-2005 conversion.
- The exact 1.19.2 vanilla state-file dataset was not locally available, so filename/province-list drift remains a verification item.

These are documented limitations, not silently treated as passed QA.
