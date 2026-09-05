# REMOVAL LOG

This branch is a clean-room rebuild under `jrk2005/`. It does not patch the old mod in place.

## Explicitly not reused

- old custom `map/` files;
- old state-file content;
- old focus trees;
- old events;
- old national spirits/dynamic modifiers;
- old OOB definitions;
- old scripted effects/variables whose purpose was not independently re-established;
- old AI-generated story prose.

## Explicitly excluded setting material

The following are excluded because the user identified them as AI-origin/non-current material:
- 「松代統制」
- 「東京朝」
- 二ッ岩マミゾウ as a current-plan participant

A previous draft accidentally regenerated some of these terms before the clean GitHub build began. They are not present in the committed clean implementation.

## Side-alignment correction

Current build:
- 霧雨魔理沙 = East Japan
- 博麗霊夢 = West Japan

Any older material reversing those roles is superseded.

## Map/state policy

There is no custom `map/` directory in `jrk2005`. State files are new overrides using existing vanilla state/province geometry. No old user-mod state file is used as a source of content.
