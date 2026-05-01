# Interstellar Confluence — Claude context

## What this project is

A Factorio Space Age mod (`interstellar-confluence`) that acts as a compatibility and balancing layer for community planet mods. It does **not** contain any game content of its own — it only patches tech-tree prerequisites, resolves recipe conflicts, and registers cross-planet recipes when multiple planet mods are active at the same time.

Factorio mod ID: `interstellar-confluence`  
Factorio version: 2.0 (Space Age)  
Installed at: `~/.factorio/mods/interstellar-confluence_0.1.0` (symlink to this repo)

## File layout

```
info.json              — mod metadata, all 290+ optional dependencies listed
settings.lua           — startup settings (ic-enable-*, ic-tier1-gate)
data.lua               — loads compat/planets/*.lua in order
data-updates.lua       — second data stage (post-dependency patching)
data-final-fixes.lua   — final pass; reads the planet registry and applies tier gates
control.lua            — runtime (currently empty scaffold)

compat/
  util.lua             — shared helpers: add_prereq, add_recipe, register_planet, etc.
  tech-tree.lua        — reads registry, applies tier gates in data-final-fixes
  conflicts.lua        — cross-mod recipe/item conflict resolution
  surface-conditions.lua — surface property normalisation
  planets/
    <mod-id>.lua       — one file per supported planet mod
```

## Key patterns

### Planet registration
Each planet file calls `util.register_planet({ name, mod, tech, tier, gate_tech })`.  
`tech-tree.lua` reads this registry in `data-final-fixes` and inserts prerequisites so each planet is locked behind the correct vanilla milestone.

### Tier system
- **Tier 1** — gated behind `interplanetary-travel` or `planet-discovery-aquilo` (controlled by `ic-tier1-gate` startup setting).
- **Tier 2** — gated behind `planet-discovery-aquilo`.
- **Tier 3** — gated behind `planet-discovery-aquilo` + cryogenic-science-pack (or similar post-Aquilo tech).

We only *add* prerequisites, never remove them. If a mod's own prerequisites already imply the tier, `gate_tech = nil` and no extra gate is needed.

### Nil-safety
All helpers in `util.lua` are nil-safe. Direct `data.raw` access must be nil-checked manually before use.

### Settings guards
Wrap cross-recipe blocks in:
```lua
if settings.startup["ic-enable-cross-planet-recipes"].value then
```
Wrap conflict patches in `ic-enable-conflict-resolution`, and surface patches in `ic-enable-surface-condition-patches`.

## TODO status (as of 2026-04-27)

The following planet mods have **unverified prototype/tech names** because no public source is available. They must be checked in-game:

- arcanyx — tech name + prerequisites
- carna — tech name + prerequisites
- foliax — tech name + prerequisites
- moon-eneas — planet prototype name + tech name
- nexus — tech name
- obsidiax — planet name + tech name + prerequisites
- omni / omnia — both planet names + both tech names
- ribbonia — planet name + tech name
- skewer (vesta) — planet name + tech name + prerequisites
- terrapalus — tech name + prerequisites
- velora — planet name + tech name + prerequisites
- planet-pack: crucible + erimos_prime names/techs

To verify in-game, load a save with the mod active and run in the console.
Note: `data.raw` is data-stage only and is nil at runtime. Use `prototypes` instead:
```lua
/c for name, _ in pairs(prototypes.planet) do game.print(name) end
/c for name, _ in pairs(prototypes.technology) do if name:find("discovery") then game.print(name) end end
```

## What is verified

- `lignumis`: tech = `planet-discovery-lignumis`, prereq = `automation-science-pack` only (10 packs — very early).
- `pelagos`: planet = `pelagos`, tech = `planet-discovery-pelagos` (confirmed from source).
- `rabbasca`: planet = `rabbasca`, tech = `planet-discovery-rabbasca`, prereqs = `gun-turret + power-armor + parent planet discovery`. Orbits Gleba by default (configurable startup setting).
- All planet-pack planets except crucible and erimos_prime: verified via PlanetsLib compatibility source.

## Do not do

- Do not copy, bundle, or reference the *content* of other mods — only their prototype *names*.
- Do not add error handling for impossible states (Factorio's data stage is a controlled environment).
- Do not add comments explaining what the code does — only add a comment when the *why* is non-obvious.
- Do not commit the `.claude/` directory (it contains session memory, not project state).
