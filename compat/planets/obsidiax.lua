-- Obsidiax
-- Mod: https://mods.factorio.com/mod/obsidiax
-- Source: N/A (no public repository)
-- License: GNU GPLv3
--
-- A dark and cold planet with no mineable resources — all resources must be grown.
-- Players start on the only habitable landmass surrounded by lava; lava provides warmth
-- against extreme freezing temperatures. Alternative resource-generation pathways unlock
-- after researching original processing methods. New machines: specialized foundries
-- and steam engines with water-recycling.
-- Described as mid-to-late game placement (survival-focused, exotic mechanics).
--
-- Planet prototype name: "obsidiax"  (TODO: verify — no source available)
-- Unlock tech: "planet-discovery-obsidiax"  (TODO: verify — no source available)
-- Prerequisites: unknown (TODO: verify — likely post-Aquilo given extreme cold + lava theme)
-- Tier 3 (assumed — hostile environment similar to Aquilo + lava suggests post-Aquilo).

if not mods["obsidiax"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "obsidiax",
    mod       = "obsidiax",
    tech      = "planet-discovery-obsidiax",  -- TODO: verify
    tier      = 3,
    gate_tech = nil,  -- TODO: verify actual prerequisites; tier 3 assumed from description
})
