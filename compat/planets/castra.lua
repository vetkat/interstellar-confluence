-- Castra
-- Mod: https://mods.factorio.com/mod/castra
-- Source: https://github.com/Bartz24/castra
-- License: GNU GPLv3
--
-- A post-apocalyptic battleground planet (distance 21, between Fulgora and Gleba).
-- Moves military technologies to require Battlefield science packs.
-- Dynamic enemies that advance technologically.
--
-- Planet name: "castra"
-- Unlock tech: "planet-discovery-castra"
-- Prerequisites: "space-platform-thruster", "military-science-pack"
-- → Very early prerequisites. Tier 1 (accessible just after building a space platform).

if not mods["castra"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "castra",
    mod       = "castra",
    tech      = "planet-discovery-castra",
    tier      = 1,
    gate_tech = nil,  -- already gated behind space-platform-thruster + military-science-pack
})

-- Castra moves military techs to require Battlefield science packs.
-- If another planet mod also moves/modifies military tech prerequisites, we may
-- need to resolve conflicts here. TODO: check against Insectitron and Nexus.
