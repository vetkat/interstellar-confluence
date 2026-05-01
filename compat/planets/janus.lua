-- Janus (Reshifted)
-- Mod: https://mods.factorio.com/mod/janus-reshifted
-- Source: https://github.com/RochX/janus
-- License: MIT
--
-- A planet with a "constantly shifting resource" (distance 15).
-- Planet name: "janus"
-- Unlock tech: "planet-discovery-janus"
-- Prerequisites: "space-platform-thruster" only → Tier 1 (very early).

if not mods["janus-reshifted"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "janus",
    mod       = "janus-reshifted",
    tech      = "planet-discovery-janus",
    tier      = 1,
    gate_tech = nil,  -- already gated behind space-platform-thruster
})
