-- Tenebris (Prime)
-- Mod: https://mods.factorio.com/mod/tenebris-prime
-- Source: https://github.com/nicholasgower/tenebris-prime
-- License: MIT
--
-- A dark planet enshrouded in thick acidic atmosphere (distance 35, near Aquilo).
-- Features biobeacons and unique enemy: the centipede.
--
-- IMPORTANT: planet prototype name is "tenebris", NOT "tenebris-prime"
-- IMPORTANT: tech name is "planet-discovery-tenebris", NOT "planet-discovery-tenebris-prime"
--
-- Unlock tech: "planet-discovery-tenebris"
-- Prerequisites: rocket-turret (Vulcanus), advanced-asteroid-processing,
--                heating-tower (Aquilo), asteroid-reprocessing,
--                electromagnetic-science-pack (Fulgora),
--                cryogenic-science-pack (Aquilo)
-- → Requires both Aquilo science packs. Explicitly post-Aquilo. Tier 3.

if not mods["tenebris-prime"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "tenebris",
    mod       = "tenebris-prime",
    tech      = "planet-discovery-tenebris",
    tier      = 3,
    gate_tech = nil,  -- already gated behind heating-tower + cryogenic-science-pack
})
