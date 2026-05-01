-- Foliax
-- Mod: https://mods.factorio.com/mod/foliax
-- Source: N/A (no public repository)
-- License: GNU GPLv3
-- Author: Crethor
-- Graphics: https://mods.factorio.com/mod/foliax-two  (Foliax/SiF Graphics pack)
--
-- "A wet and vibrant planet with no mineable resources" — all resources come from growing
-- and processing up to 25 different plant species. Provides an alternative research route
-- for acquiring most vanilla planet unlocks, with configurable research costs.
-- Stacked recipes require large-scale setups from early on.
--
-- Tech name: "planet-discovery-foliax"  (TODO: verify — no source available)
-- Prerequisites: unknown (TODO: verify)
-- Tier: 1 (wet/biology theme suggests pre-Aquilo; plant chain is early-accessible)

if not mods["foliax"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "foliax",
    mod       = "foliax",
    tech      = "planet-discovery-foliax",  -- TODO: verify
    tier      = 1,
    gate_tech = nil,  -- TODO: verify actual prerequisites
})

-- Foliax × Gleba: both wet/biological planets. TODO: cross-recipes.
-- Foliax × Lignumis: both flora-focused. TODO: cross-recipes.
