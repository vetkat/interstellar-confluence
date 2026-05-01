-- Ribbonia
-- Mod: https://mods.factorio.com/mod/ribbonia
-- Source: N/A (no public repository)
-- License: MIT
--
-- A derelict Fulgoran ringworld — explicitly described as "Aquilo tier" in difficulty.
-- Ribbon-world layout: the entire map is a narrow strip (configurable width 9–32 tiles)
-- requiring spatial reasoning and creative factory layouts.
-- Gameplay: fluid crafting, molten plastic, fusion plasma handling, pneumatic pressing,
-- casting plant for fluid-based production chains. Integrates Renai Transportation mechanics.
-- Minimal impact on vanilla content; works on existing saves.
--
-- Planet prototype name: "ribbonia"  (TODO: verify — no source available)
-- Unlock tech: "planet-discovery-ribbonia"  (TODO: verify — no source available)
-- Prerequisites: unknown — "Aquilo tier" implies post-Aquilo or at least Aquilo-level prereqs
-- Tier 3: mod explicitly describes itself as Aquilo-tier difficulty.

if not mods["ribbonia"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "ribbonia",
    mod       = "ribbonia",
    tech      = "planet-discovery-ribbonia",  -- TODO: verify
    tier      = 3,
    gate_tech = nil,  -- mod is described as Aquilo-tier; verify actual prerequisites
})

-- Ribbonia × Fulgora: both are Fulgoran-lore locations.
-- "Derelict Fulgoran ringworld" suggests shared lore with Fulgora — watch for item-name overlaps.
