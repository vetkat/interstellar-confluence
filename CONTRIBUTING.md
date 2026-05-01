# Contributing to Interstellar Confluence

## Adding support for a new planet mod

Each supported mod gets its own file under `compat/planets/<mod-id>.lua`. Here's a minimal template:

```lua
-- Planet Name
-- Mod: https://mods.factorio.com/mod/<mod-id>
-- Source: <GitHub link or "no public source">
-- License: <SPDX identifier>
--
-- One-line description of what this planet is about.
-- Planet name: "<prototype name>"
-- Unlock tech: "planet-discovery-<name>"
-- Prerequisites: <science packs / techs required>  → Tier N.

if not mods["<mod-id>"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "<planet prototype name>",
    mod       = "<mod-id>",
    tech      = "planet-discovery-<name>",
    tier      = 1,          -- 1, 2, or 3 (see README)
    gate_tech = nil,        -- nil = use tier default; string = explicit gate
})
```

Then add the file name (without `.lua`) to the `planet_files` list in [data.lua](data.lua).

### Finding prototype names

The most reliable way is to read the mod's source — look for `type = "planet"` and `type = "technology"` + `"unlock-space-location"`. If there is no public source, load the mod in a test save and run:

```lua
/c for name, _ in pairs(data.raw.planet) do log(name) end
```

Mark anything that cannot be verified remotely with `-- TODO: verify`.

### Determining the tier

| Tier | Vanilla equivalent | Required science packs |
|------|--------------------|------------------------|
| 1 | Vulcanus / Fulgora / Gleba | metallurgic, electromagnetic, or agricultural |
| 2 | Aquilo | cryogenic or space science |
| 3 | Post-Aquilo | promethium or endgame-specific |

When in doubt, set a higher tier — it is better to gate a planet behind more prerequisites than to put it in the wrong position in the tree.

## Cross-planet recipes

Cross-planet recipe stubs go inside the `if settings.startup["ic-enable-cross-planet-recipes"].value then` block at the bottom of the relevant planet file. Guard each recipe addition with `if mods["other-mod"] then`. Use `util.add_recipe` so first-wins semantics prevent duplicate registration.

## Conflict patches

Recipe or item conflicts between mods go in [compat/conflicts.lua](compat/conflicts.lua). Document *why* the conflict exists and which mod wins.

## Code conventions

- No comments explaining what the code does — only *why* when it is non-obvious.
- All prototype access must be nil-guarded (use `util.has_tech`, `util.has_item`, etc., or check `data.raw` directly).
- Do not copy, paste, or bundle any content from the mods we support. Reference prototype names only.
- File names match the Factorio mod ID (lowercased, hyphens preserved).

## Legal

Every supported mod has its own license. Before adding compatibility code, check the license noted at the top of the existing compat file, or look it up on the mod portal. The key rule: **referencing a prototype name is always fine; copying assets or source code is not**.

If a mod is `CC BY-NC-ND` (like Pelagos) or has a restrictive licence, add a note in the compat file so future contributors know what they can and cannot do.