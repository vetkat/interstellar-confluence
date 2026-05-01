-- Virentis
-- Mod: https://mods.factorio.com/mod/virentis
-- Source: https://github.com/SoulCRYSIS/virentis
-- License: MIT
-- Graphics: https://mods.factorio.com/mod/virentis-graphics
-- Music: https://mods.factorio.com/mod/PI-Virentis-Music
--
-- An agriculture/cooking/trading planet (distance 25, between Fulgora and Gleba).
-- Despite proximity to the sun, the unlock chain requires all main planets first.
--
-- Unlock tech: "planet-discovery-virentis"
-- Prerequisites: advanced-asteroid-processing, heating-tower (Aquilo),
--                asteroid-reprocessing, rocket-turret (Vulcanus), biolab (Gleba)
-- → Requires Vulcanus + Gleba + Aquilo. Tier 3.

if not mods["virentis"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "virentis",
    mod       = "virentis",
    tech      = "planet-discovery-virentis",
    tier      = 3,
    gate_tech = nil,  -- already gated behind heating-tower (Aquilo) + biolab (Gleba)
})

-- Virentis × Gleba: both agriculture-focused planets. TODO: shared bio-recipes.
if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["lignumis"] then
        -- TODO: Virentis crops + Lignumis wood cross-recipes.
    end
end
