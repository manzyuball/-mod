# STORY FLOW

## Current canon used by this build

Only setting elements directly confirmed by the user are treated as canon for the outbreak sequence.

- The scenario is a divided Japan in 2005.
- 霧雨魔理沙 is on the East side.
- 博麗霊夢 is on the West side.
- The outbreak sequence begins with an attack on the fusion reactor in Toki City.
- A high-firepower laser base linked to the fusion reactor is taken over/seized.
- West Japan's air-defence network is hacked/disrupted.
- The sequence culminates in **日本アルプス大突破**.

The focus/event spine enforces that order for the East AI route:

`EJP_operation_preparation`
→ `EJP_strike_toki`
→ `EJP_seize_laser_base`
→ `EJP_hack_western_air_defense`
→ `EJP_break_the_alps`
→ `EJP_press_tokai`
→ `EJP_drive_west`

West Japan has a parallel response tree emphasizing Toki security, protection of the linked laser base, air-defence recovery, Tokai defence and a later counteroffensive.

## Deliberately unresolved

The following are **not** given invented canonical answers in code/localisation:

- the exact formal name of the fusion reactor/facility;
- the exact formal name of the linked laser base;
- the named individual or unit responsible for each pre-war action;
- the precise tactical mechanism by which the laser site is seized;
- the full minute-by-minute chronology of the opening operation;
- the exact canonical composition of every formation.

Where the game requires abstraction, localisation explicitly describes it as an abstraction rather than a setting fact.

## Discarded / non-canon AI-origin material

The following terms/content are intentionally excluded and must not be reintroduced as canon without direct user confirmation:

- 「松代統制」
- 「東京朝」
- 二ッ岩マミゾウ as a participant in the current plan

Older or speculative AI-generated setting material is not inherited simply because it appeared in a previous draft.

## Filming/useful deterministic route

The core outbreak is placed in focuses and triggered events rather than random MTTH events. This makes the sequence reproducible for filming. Temporary battlefield advantages use timed dynamic modifiers so that the story event changes gameplay without permanently adding visible national spirits.
