-- Moon of Eneas
-- Mod: https://mods.factorio.com/mod/moon-eneas
-- Source: N/A (no public repository)
-- License: GNU GPLv3
-- Assets: https://mods.factorio.com/mod/assets-eneas
--
-- "The ancient moon" — positioned above the clouds of Nauvis.
-- Players first encounter crashing debris from Eneas on Nauvis, then travel to the moon.
-- The surface is ruined, polluted with toxic fumes, and dominated by "Unit-05," an
-- enigmatic superintelligence that serves as the moon's operating system.
-- Accessible "very early in your factorio playthrough" — effectively Tier 1.
--
-- Planet prototype name: "eneas"  (TODO: verify — no source available)
-- Unlock tech: "planet-discovery-eneas"  (TODO: verify — no source available)
-- Prerequisites: unknown — implied very early (no space science packs mentioned)

if not mods["moon-eneas"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "eneas",          -- TODO: verify exact planet prototype name
    mod       = "moon-eneas",
    tech      = "planet-discovery-eneas",  -- TODO: verify
    tier      = 1,
    gate_tech = nil,  -- mod is described as very-early-game accessible
})
