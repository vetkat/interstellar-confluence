-- Velora
-- Mod: https://mods.factorio.com/mod/Velora
-- Source: https://github.com/Krypt0nC0R3/Velora  (repository may not be public yet)
-- License: MIT
--
-- A Nauvis-like moon in orbit around Gleba. Features ruins of a more advanced civilization.
-- Introduces a unique crafting chain with new resources and a new enemy type.
-- Adds a new infinite research that increases beacon efficiency (endgame reward).
-- Work in progress — recipes and technologies may change between versions.
--
-- Planet prototype name: "velora"  (TODO: verify — source not publicly accessible)
-- Unlock tech: "planet-discovery-velora"  (TODO: verify — source not accessible)
-- Prerequisites: unknown (TODO: verify — orbits Gleba, so likely post-Gleba, Tier 2)
-- Tier 2: orbits Gleba; mod is described as an endgame/late moon destination.

if not mods["Velora"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "velora",
    mod       = "Velora",
    tech      = "planet-discovery-velora",  -- TODO: verify
    tier      = 2,
    gate_tech = nil,  -- likely gated behind planet-discovery-gleba; verify
})

-- Velora × Gleba: Velora orbits Gleba and its ruins theme may involve Gleban items.
-- TODO: verify if cross-recipes between Velora resources and Gleba bioprocessing are intended.
