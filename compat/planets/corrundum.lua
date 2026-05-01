-- Corrundum
-- Mod: https://mods.factorio.com/mod/corrundum
-- Source: https://github.com/ZacharyDK/Corrundum  (files in corrundum/ subdirectory)
-- License: MIT
--
-- A CO2-blanketed mid-game planet (distance 20).
-- Provides blue circuits, low-density structures, rocket fuel, concrete inputs.
-- Designed to not break vanilla progression paths.
--
-- Planet name: "corrundum"
-- Unlock tech: "planet-discovery-corrundum"
-- Prerequisites: "space-platform-thruster" only → Tier 1 (very early).

if not mods["corrundum"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "corrundum",
    mod       = "corrundum",
    tech      = "planet-discovery-corrundum",
    tier      = 1,
    gate_tech = nil,  -- already gated behind space-platform-thruster
})

-- Corrundum × Cubium: same author (ZacharyDK), likely complementary.
-- Secretas is also by ZacharyDK — all three may share item namespaces.
