-- Pelagos
-- Mod: https://mods.factorio.com/mod/pelagos
-- Source: https://github.com/Talandar99/pelagos
-- License: CC BY-NC-ND 4.0 — do NOT copy any Pelagos assets or code.
--          Referencing prototype names in compatibility code is fine.
--
-- An ocean planet that can serve as an alternative starting world.
-- Planet name: "pelagos"  (confirmed from source: prototypes/planet/planet.lua)
-- Tech name: "planet-discovery-pelagos"  (confirmed from source: prototypes/technologies.lua)
--
-- Unlock tech: "planet-discovery-pelagos"
-- Prerequisites: agricultural-science-pack (Gleba), fish-breeding, captivity,
--                deep-sea-oil-extraction
-- → Requires Gleba. Tier 2 for progression (despite being startable).

if not mods["pelagos"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "pelagos",
    mod       = "pelagos",
    tech      = "planet-discovery-pelagos",
    tier      = 2,
    gate_tech = nil,  -- already gated behind agricultural-science-pack (Gleba)
})

-- Pelagos × Maraxsis: both ocean planets, CC BY-NC-ND limits what we can do here.
-- Only non-creative compatibility patches (no derived content) are permitted.
