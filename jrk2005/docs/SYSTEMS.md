# SYSTEMS

## National-spirit budget

Hard design rule: **national spirits + country dynamic modifiers must never intentionally exceed 8 simultaneously for EJP or WJP.** Government laws/advisers are outside this project budget.

### East Japan
Start:
- JRK_divided_archipelago
- EJP_wartime_command_structure
- EJP_military_priority
- EJP_command_network_stage1 (dynamic)

Typical total: **4**.

Possible later additions:
- EJP_internal_surveillance (persistent idea)
- EJP_command_network_stage2 replaces stage1, not stacks with it
- EJP_alpine_offensive_timed is temporary

Designed peak: **6**.

### West Japan
Start:
- JRK_divided_archipelago
- WJP_industrial_network
- WJP_fragmented_air_defense

Typical total: **3**.

Transitions/additions:
- WJP_fragmented_air_defense is removed by the restoration focus before WJP_air_defense_stage1 is added.
- WJP_air_defense_stage2 replaces stage1.
- WJP_yatagarasu_program is persistent.
- WJP_civil_defense is persistent.
- WJP_cyber_disruption_timed is temporary.
- WJP_emergency_mobilization_timed is temporary.

Designed peak during the crisis: **7**.

## Why dynamic modifiers are used

Operational conditions (cyber disruption, air-defence recovery, Alpine offensive, emergency mobilisation) are represented as dynamic modifiers because they are states of a system, not separate ideological “spirits”. Timed modifiers receive `days = ...` when they represent temporary operational windows.

## Outbreak state machine

The East focus sequence is the primary deterministic state machine:

1. preparation
2. Toki reactor attack flag/event
3. linked laser-base seizure flag/event
4. West air-defence cyber disruption
5. declaration of war + timed Alpine offensive

No `on_daily` or high-frequency global polling is used for this sequence.

## West air-defence system

- Starts with a negative persistent idea (`WJP_fragmented_air_defense`).
- Cyber attack adds an additional temporary negative dynamic modifier.
- West can remove the cyber modifier through a decision.
- The restoration focus removes the persistent weakness and adds Stage 1 recovery.
- Later counteroffensive preparation replaces Stage 1 with Stage 2.

This keeps the UI count controlled while making the system's state legible.

## Decisions

Decisions are limited to actions with an operational purpose:
- East: reconnaissance/route preparation and emergency logistics.
- West: backup air-defence activation, cyber isolation, Tokai mobilisation.

They do not exist merely to add political power or duplicate focus rewards.

## Performance rules

- no daily or weekly global state scans;
- no large global variable arrays;
- no repeated random event polling;
- no unused decision categories;
- no event spam for minor modifier changes;
- opening story is focus-driven and event-triggered.
