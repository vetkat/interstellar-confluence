-- Rubia
-- Mod: https://mods.factorio.com/mod/rubia
-- Source: https://github.com/LoupAndSnoop/rubia
-- License: GNU GPLv3
-- Assets: https://mods.factorio.com/mod/rubia-assets
--
-- Planet name: "rubia", distance 15.
--
-- Unlock tech: "planet-discovery-rubia"
-- Prerequisites: space-platform-thruster, energy-shield-equipment,
--                electric-energy-distribution-1, railway
-- → Very early prerequisites — accessible as soon as you have a space platform.
-- Tier 1 (early, pre-Vulcanus viable).

if not mods["rubia"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "rubia",
    mod       = "rubia",
    tech      = "planet-discovery-rubia",
    tier      = 1,
    gate_tech = nil,  -- prereqs are already very early-game
})
