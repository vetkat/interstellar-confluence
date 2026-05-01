-- Dea Dia System
-- Mod: https://mods.factorio.com/mod/dea-dia-system
-- Source: https://github.com/Frontrider/dea-dia-system
-- License: MIT
--
-- Adds a SEPARATE SOLAR SYSTEM with three celestial bodies (ALPHA-stage mod):
--   "planet-dea-dia"  — a resource-rich gas giant (the hub, home to floating platform gameplay)
--   "prosephina"      — a warmer inner planet with shallow seas and primitive life; warm/biology theme
--   "lemures"         — a frozen outer planet with tidal lava heating and cold biters
--
-- The system is accessed via the star "star-dea-dia" at solar distance 70
-- (well outside the vanilla solar system edge), connected from Fulgora via a 30 000-length route.
-- Each planet within the system is at distance ~5-6 from star-dea-dia.
--
-- System entry tech: "system-discovery-dea-dia"
--   Prerequisites: metallurgic-science-pack (Vulcanus), electromagnetic-science-pack (Fulgora),
--                  rocket-turret (Vulcanus) → Tier 1.
--   Unlocks: dea-dia-system-edge (the interstellar waypoint).
--
-- "planet-discovery-prosephina" → prereq: system-discovery-dea-dia (you must reach the system first).
-- "planet-discovery-lemures"    → prereq: insulation-science-pack (a dea-dia in-system science pack).
--
-- planet-dea-dia itself has NO separate discovery tech; it is reachable once at the system edge.
--
-- Note: Secretas internally handles Secretas × dea-dia-system topology. No patch needed here.

if not mods["dea-dia-system"] then return end

local util = require("compat.util")

-- Gas giant hub — unlocked implicitly when the system edge is discovered.
util.register_planet({
    name      = "planet-dea-dia",
    mod       = "dea-dia-system",
    tech      = "system-discovery-dea-dia",  -- the system-entry tech (unlocks the system edge)
    tier      = 1,
    gate_tech = nil,  -- already gated behind metallurgic + electromagnetic science packs
})

-- Warm inner planet (shallow seas, slimeweed, soil).
util.register_planet({
    name      = "prosephina",
    mod       = "dea-dia-system",
    tech      = "planet-discovery-prosephina",
    tier      = 1,
    gate_tech = nil,  -- prereq is system-discovery-dea-dia; handled by the mod itself
})

-- Frozen outer planet (cold biters, lava heating, thermodynamics lab).
util.register_planet({
    name      = "lemures",
    mod       = "dea-dia-system",
    tech      = "planet-discovery-lemures",
    tier      = 1,
    gate_tech = nil,  -- prereq is insulation-science-pack (an in-system science pack); mod handles this
})
