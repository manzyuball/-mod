# CHANGELOG — AI WORK

## 0.1.0 clean rebuild

- Created an isolated new scenario under `jrk2005/` rather than modifying the old mod in place.
- Set the scenario start to 2005-01-01.
- Added EJP and WJP country tags and country histories.
- Rebuilt the Japanese home-island ownership using vanilla state/province geometry only; no custom map directory.
- Added a dedicated 2005 bookmark.
- Added current-plan political leaders and only the explicitly supported East/West commander alignment.
- Implemented a bounded national-spirit/dynamic-modifier system.
- Implemented the current outbreak route: Toki fusion-reactor attack → linked high-firepower laser-base seizure → West air-defence hack → 日本アルプス大突破.
- Added East and West focus trees with military, industry and defence branches rather than modifier-only story spam.
- Added focused operational decisions and outbreak events.
- Added debug-only deterministic filming controls for the four confirmed outbreak stages.
- Added 1.19 Army HQ templates, HQ-specific support units and Regimental Support rows.
- Kept the native Field Officer / Division Commander promotion system instead of inventing fake named division commanders.
- Added NSB tank designer starting variants and production lines.
- Added BBA fighter designer starting variants, production lines and starting air wings.
- Added initial stockpiles, land OOBs and East/West AI strategy priorities.
- Added complete Japanese country/party and gameplay localisation.
- Added build-time generated EJP/WJP TGA flags in normal, medium and small sizes.
- Added design/QA/reference documentation and a build validation manifest.

## Corrections applied during rebuild

- Removed the AI-origin setting term 「松代統制」.
- Removed the AI-origin setting term 「東京朝」.
- Removed 二ッ岩マミゾウ from the current-plan roster.
- Corrected side alignment: 魔理沙 = East, 霊夢 = West.
- Stopped treating unconfirmed facility names/personnel as canon.

## Not claimed as completed

- Final authored character portraits and focus/event artwork.
- Final art-directed replacement for the generated placeholder country flags.
- Full modern-2005 conversion of every country outside the Japanese theatre.
- In-engine 1.19.2 `error.log` clean run.
- Final combat/economic balance pass.
