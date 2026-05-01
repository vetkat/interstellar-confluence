-- Maraxsis
-- Mod: https://mods.factorio.com/mod/maraxsis
-- Source: https://github.com/notnotmelon/maraxsis
-- License: MIT
--
-- An ocean/submarine planet with a secondary deep-trench surface.
-- Distance: 15 (primary), 15.6 (maraxsis-trench).
-- Two planet prototypes: "maraxsis" and "maraxsis-trench".
--
-- Unlock tech: "planet-discovery-maraxsis"
-- Prerequisites: advanced-asteroid-processing, rocket-turret (Vulcanus),
--                cliff-explosives, electromagnetic-science-pack (Fulgora),
--                quality-module, [conditionally: sp-spidertron-automation]
-- → Requires Vulcanus + Fulgora. Does NOT require Aquilo. Tier 1.
--
-- Note: maraxsis-trench is a secondary surface unlocked later within Maraxsis
-- progression (via maraxsis-project-seadragon). It does NOT need a separate
-- planet-discovery tech — it's automatically accessible once Maraxsis is visited.

if not mods["maraxsis"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "maraxsis",
    mod       = "maraxsis",
    tech      = "planet-discovery-maraxsis",
    tier      = 1,
    gate_tech = nil,  -- already gated behind rocket-turret + electromagnetic-science-pack
})
-- maraxsis-trench is a child surface; no separate registration needed.

-- Maraxsis has its own compat/ directory in the repo — check for conflicts
-- with mods we also support before adding cross-mod patches here.
if settings.startup["ic-enable-cross-planet-recipes"].value then
    -- Maraxsis × Pelagos: both ocean planets. Pelagos items: pelagos-biochamber, pelagos-science-pack,
    -- coconut-related items, titanium-plate, methane. TODO: design cross-recipes.
    if mods["pelagos"] then
        -- TODO: add cross-recipe(s) using Maraxsis + Pelagos outputs.
    end
end
