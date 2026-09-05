# OPTIMIZATION REPORT

## Event/on-action load

The scenario opening uses `on_game_start_country` once for EJP/WJP. There is no `on_daily`, `on_weekly` or global every-country polling loop in the new content.

The outbreak route is driven by focus completion and directly triggered country events. This is both deterministic for filming and cheaper than repeatedly evaluating global conditions.

## Decision load

Only five operational decisions are currently defined across both countries. None use high-frequency scripted missions. Timed operational effects use `days` on dynamic modifiers.

## National-spirit UI load

Persistent ideas are intentionally sparse. Progression that would otherwise create a stack of spirits is represented by replacement-stage dynamic modifiers. Designed peak remains below the requested eight-item budget.

## File organization

Content is separated into:
- scenario/history;
- focus/event narrative;
- OOB/equipment;
- ideas/dynamic systems;
- decisions;
- localisation;
- documentation.

This avoids a single monolithic event/focus file and makes later error-log isolation practical.

## Dead-code policy

Because this is a clean rebuild, no old scripted variables/effects were retained “just in case”. Every currently committed custom idea, dynamic modifier, decision and event has a direct reference in scenario content or documentation.

## Remaining performance risks

None of the currently known unresolved items are high-frequency performance problems. The larger future risk is expansion into a global 2005 world: such work should continue the same event-driven approach and avoid per-country daily scans.
