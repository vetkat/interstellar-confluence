-- Carna
-- Mod: https://mods.factorio.com/mod/carna
-- Source: N/A (no public repository)
-- License: GNU GPLv3
-- Assets: carna_assets, carna_assets_2, carna_assets_3, carna_assets_enemies
--
-- A very difficult planet. Aquilo is mentioned as a reference point,
-- suggesting Carna is at least mid-to-late game (Tier 2-3).
-- Reportedly takes "well over 30 hours to complete."
--
-- Tech name: "planet-discovery-carna"  (TODO: verify — no source available)
-- Prerequisites: unknown (TODO: verify)
-- Assigning Tier 2 conservatively; adjust after playtesting confirms placement.

if not mods["carna"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "carna",
    mod       = "carna",
    tech      = "planet-discovery-carna",  -- TODO: verify
    tier      = 2,
    gate_tech = nil,  -- TODO: verify actual prerequisites
})
