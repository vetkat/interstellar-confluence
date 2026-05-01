-- Terrapalus (Terra Palus)
-- Mod: https://mods.factorio.com/mod/terrapalus
-- Source: N/A (no public repository)
-- License: MIT
--
-- A small swamp moon that orbits Gleba (distance 1.39 in moon orbit, post-Gleba).
-- Explicitly unlocked after researching Gleba. A Nauvis-Gleba hybrid environment.
-- Supports PlanetsLib orbit visualization and optional ERM enemy compatibility.
-- Tier 2 (after Gleba, before or alongside Aquilo).
--
-- Planet prototype name: "terrapalus"  (confirmed from PlanetsLib compat data)
-- Tech name: "planet-discovery-terrapalus"  (TODO: verify — no source available)
-- Prerequisites: unknown (TODO: verify — mod states "unlock after researching Gleba")

if not mods["terrapalus"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "terrapalus",
    mod       = "terrapalus",
    tech      = "planet-discovery-terrapalus",  -- TODO: verify
    tier      = 2,
    gate_tech = nil,  -- presumably already gated behind Gleba; verify
})

-- Terrapalus × Gleba: both swamp/bio planets. TODO: shared bioprocessing recipes.
