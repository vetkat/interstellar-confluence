-- Pyroclast
-- Mod: https://mods.factorio.com/mod/Pyroclast
-- Source: https://github.com/MadBox-99/Pyroclast
-- License: MIT
--
-- A hyper-volcanic world of extreme pressure and heat (distance 15).
-- Introduces Foxhole-style materials: Bmat, Cmat, Emat, Rmat, Hemat, Assembly Materials.
--
-- Unlock tech: "planet-discovery-pyroclast"
-- Prerequisites: "planet-discovery-vulcanus"
-- → Directly after Vulcanus in progression. Tier 1.

if not mods["Pyroclast"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "pyroclast",
    mod       = "Pyroclast",
    tech      = "planet-discovery-pyroclast",
    tier      = 1,
    gate_tech = nil,  -- already gated behind planet-discovery-vulcanus
})

-- Pyroclast × Vulcanus: both are volcanic. TODO: heat/lava cross-recipes.
if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["vulcanus-lava-power"] then
        -- TODO: cross-recipe using pyroclast Emat + Vulcanus lava.
    end
end
