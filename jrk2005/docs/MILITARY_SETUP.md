# MILITARY SETUP

## 1.19 Army HQ

The starting OOBs include country-specific Army HQ templates using the 1.19 pattern verified against current Kaiserreich/EaW source:

```txt
is_army_hq = yes
regiments = {
    hq_infantry = { ... }
}
support = {
    hq_support_company = { ... }
    hq_logistics = { ... }
    hq_maintenance = { ... }
    hq_field_hospital = { ... }
}
```

Both EJP and WJP receive one starting Army HQ formation. This is not a legacy “HQ-named normal infantry division”. The extra support slots use HQ-specific sub-units rather than ordinary support companies.

## Regimental Support row

Starting line divisions use the 1.19 `regimental_support` block. Examples in this build:
- `field_guns`
- `anti_air_battery`
- `mot_fire_support`

This syntax was cross-checked against current Kaiserreich AI templates and Equestria at War OOB files.

## Division Commander / Field Officer

Starting divisions deliberately use the native engine-managed Field Officer / Division Commander system. Named strategic commanders are not duplicated as fake division officers. See `DIVISION_COMMANDERS.md` for the promotion/runtime policy.

## East Japan starting land force

Templates:
- 東日本軍統合司令部 — deployable Army HQ with logistics, maintenance and field-hospital HQ supports.
- 東日本防衛師団 — 8 infantry battalions, field-gun + AA regimental support, engineer/recon/logistics/signal.
- 東日本機動師団 — mechanized + modern armour, motorised fire support + AA, engineer/logistics/maintenance/signal.
- 東日本山岳旅団 — mountaineers with field-gun regimental support and engineer/logistics/recon.

Starting formations are concentrated in Kanto, Tohoku, Koshinetsu, Hokuriku and Hokkaido, with the mobile/mountain component positioned to make the central mountain front relevant.

## West Japan starting land force

Templates:
- 西日本軍統合司令部 — deployable Army HQ with HQ-specific sustainment supports.
- 西日本防衛師団 — infantry with field-gun + AA regimental support.
- 西日本機甲師団 — modern armour + mechanized infantry, motorised fire support + AA.
- 西日本山岳旅団 — mountain-defence formation.

Starting formations concentrate on Kansai/Tokai while retaining formations in Chugoku and Kyushu.

## No Step Back tank designer

Both countries create a `modern_tank_chassis_1` variant at scenario start when NSB is active. Module IDs were cross-checked against current Kaiserreich designer files.

East: `東日本主力戦車 I型` — deliberately generic because a canonical East vehicle designation has not been confirmed.

West: `90式戦車 西日本仕様` — an explicitly recognizable baseline used as a gameplay approximation; exact 2005 West-Japan variant details are not claimed as canon.

The variants are connected to starting `add_equipment_production` lines instead of being orphan designs.

## By Blood Alone aircraft designer and starting air wings

Both countries create a `small_plane_airframe_4` jet fighter variant when BBA is active.

East: `東日本制空戦闘機 I型` — generic pending confirmed canonical designation. Starting air wings: 160 aircraft in Kanto and 80 in Tohoku.

West: `F-15J 西日本仕様` — gameplay representation of West Japan's interceptor fleet. Starting air wings: 160 in Tokai and 120 in Kansai.

Each variant is connected to a production line and actual starting air-wing OOB entries. Exact quantities remain subject to runtime balance testing.

## Stockpile / production

Each side begins with:
- infantry-equipment production;
- support-equipment production;
- tank production under NSB;
- fighter production under BBA;
- an initial infantry/support-equipment stockpile;
- starting fighter wings tied to the created BBA variant.

The exact quantitative balance is a first-pass operational balance and must be tuned from actual 1.19.2 combat logs rather than treated as final.

## Commander assignments

Current confirmed side alignment is respected:
- 霧雨魔理沙: East Japan commander.
- 博麗霊夢: West Japan commander.

豊聡耳神子 and 東風谷早苗 are represented as the initial political leaders. No unconfirmed additional character roster is inserted simply to fill slots.
