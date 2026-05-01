-- Cubium
-- Mod: https://mods.factorio.com/mod/cubium
-- Source: https://github.com/ZacharyDK/Cubium  (files in cubium/ subdirectory)
-- License: MIT
--
-- Planet name: "cubium", distance 15.
-- Can be visited as first planet or early second. Best as second destination.
-- Introduces ultradense substrates and new crafting chains.
--
-- Unlock tech: "planet-discovery-cubium"
-- Prerequisites: "space-platform-thruster" only → Tier 1 (very early).
--
-- Note: ZacharyDK also made Corrundum and Secretas — all three likely share
-- a compatible item namespace. Check for cross-recipe opportunities.

if not mods["cubium"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "cubium",
    mod       = "cubium",
    tech      = "planet-discovery-cubium",
    tier      = 1,
    gate_tech = nil,
})

if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["corrundum"] then
        -- TODO: ZacharyDK's trilogy (cubium, corrundum, secretas) — check for intended cross-recipes.
    end
end
