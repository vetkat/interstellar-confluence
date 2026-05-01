-- Secretas + Frozeta
-- Mod: https://mods.factorio.com/mod/secretas
-- Source: https://github.com/ZacharyDK/Secretas  (files in secretas/ subdirectory)
-- License: MIT
--
-- Adds TWO locations at the far edge of the solar system (distance 44-45):
--   "frozeta"  — icy moon, the primary PLAYABLE surface
--   "secretas" — gas giant with asteroid ring (the space connection hub)
--
-- "A love child between Fulgora and Aquilo." Gold science + tier-4 modules.
-- Space connections: aquilo → secretas → frozeta (length 80,000 + 10,000).
-- When dea-dia-system is also active, the topology changes (handled by Secretas internally).
--
-- planet-discovery-secretas: prereqs planet-discovery-aquilo + cryogenic-science-pack → Tier 3.
-- planet-discovery-frozeta:  same prereqs → Tier 3.

if not mods["secretas"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "secretas",
    mod       = "secretas",
    tech      = "planet-discovery-secretas",
    tier      = 3,
    gate_tech = nil,  -- already gated behind planet-discovery-aquilo + cryogenic-science-pack
})

util.register_planet({
    name      = "frozeta",
    mod       = "secretas",
    tech      = "planet-discovery-frozeta",
    tier      = 3,
    gate_tech = nil,
})

-- Secretas has built-in compatibility with dea-dia-system — no extra patch needed.
-- Secretas × Corrundum/Cubium: same author (ZacharyDK). Check for shared item namespaces.
