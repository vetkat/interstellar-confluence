-- Linox
-- Mod: https://mods.factorio.com/mod/linox
-- Source: https://github.com/xeon0527/factorio_mod_planet_linox  (main branch)
-- License: Limited Distribution Only Licence (custom — do NOT copy Linox code or assets)
--
-- An extremely hostile planet very close to its sun, with a lava-covered surface.
-- All above-ground construction is impossible; players operate underground via a
-- pre-built landing structure. Introduces a "recursive blueprint system" due to
-- severe space constraints in the underground facility.
-- Rewards: advanced rocket silo (4x faster), mantle extractors, compact roboports,
--          rare-earth element technologies.
--
-- Planet prototype name: "linox-planet_linox"  (non-standard: mod prefixes all prototypes)
-- Unlock tech: "linox-technology_planet-discovery-linox"  (non-standard naming!)
-- Prerequisites: planet-discovery-vulcanus, construction-robotics,
--                metallurgic-science-pack, circuit-network
-- Science packs: automation, logistic, chemical, space, metallurgic → Tier 1 (post-Vulcanus).

if not mods["linox"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "linox-planet_linox",
    mod       = "linox",
    tech      = "linox-technology_planet-discovery-linox",
    tier      = 1,
    gate_tech = nil,  -- already gated behind planet-discovery-vulcanus + metallurgic-science-pack
})

-- IMPORTANT: Linox uses non-standard prototype naming (all prototypes prefixed "linox-*").
-- When referencing any Linox item/entity/tech, always use the prefixed names.
-- License is restrictive — no derived content permitted.
