-- Nexus
-- Mod: https://mods.factorio.com/mod/Nexus
-- Source: N/A (no public repository)
-- License: GNU GPLv3
-- Graphics: https://mods.factorio.com/mod/Nexus-Graphics
-- Threat system: https://mods.factorio.com/mod/Nexus-Threat
--
-- An endgame planet that completely reworks Promethium as a mineable resource.
-- Requires synthesizing technology from ALL previous Space Age planets.
-- Goal: construct a warp drive for return travel.
-- Borrows mechanical elements from all other Space Age locations.
--
-- Tech name: "planet-discovery-nexus"  (TODO: verify — no source available)
-- Prerequisites: all 5 vanilla planet science packs (metallurgic, electromagnetic,
--               agricultural, cryogenic + space-science-pack) → Tier 3.
--               Optional second gate: maraxsis + tenebris science + fusion reactor (for promethium).
-- Tier 3 (explicitly designed as the final destination after ALL vanilla planets).

if not mods["Nexus"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "nexus",
    mod       = "Nexus",
    tech      = "planet-discovery-nexus",  -- TODO: verify (no source available)
    tier      = 3,
    gate_tech = nil,  -- mod self-gates behind all vanilla planet science packs
})

-- Nexus-Threat adds a threat surface property. If another planet mod also uses
-- a "threat" surface property, there may be a name collision.
-- TODO: check if Nexus-Threat's surface property name conflicts with any other mod.
