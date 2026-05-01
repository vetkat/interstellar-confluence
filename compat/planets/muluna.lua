-- Muluna, Moon of Nauvis
-- Mod: https://mods.factorio.com/mod/planet-muluna
-- Source: https://github.com/nicholasgower/planet-muluna  (same author as tenebris-prime)
-- License: MIT
-- Support mods: muluna-graphics, muluna-utility-constants, tile-upgrade-planner-muluna
--
-- Nauvis' moon — low gravity, no oxygen, no oil. Serves as the source of space science packs
-- (the mod reworks the space science pack recipe to require production on Muluna).
-- Features crushers, telescopes, vacuum boilers, sealed greenhouses, steam machinery.
-- Players produce "Exploration science packs" (nanofoamed polymers + astronomical data)
-- as an extended endgame progression path.
-- Supports Any Planet Start.
--
-- Planet prototype name: "muluna"
-- Unlock tech: "planet-discovery-muluna"
-- Prerequisites: "thruster-fuel" (an early Muluna-specific tech) → very early, Tier 1.
-- NOTE: Muluna heavily patches the vanilla tech tree (space-platform-thruster, space-science-pack).
-- Any mod that also patches these techs may need conflict resolution here.

if not mods["planet-muluna"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "muluna",
    mod       = "planet-muluna",
    tech      = "planet-discovery-muluna",
    tier      = 1,
    gate_tech = nil,  -- gated behind thruster-fuel (very early Muluna tech)
})

-- Muluna × Cerys: both are moons. Cerys is MIT-incompatible (CC BY-NC-ND) — no derived content.
-- Muluna × Maraxsis: Muluna ships with a built-in maraxsis compat file — no extra patch needed.
