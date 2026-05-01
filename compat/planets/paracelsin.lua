-- Paracelsin
-- Mod: https://mods.factorio.com/mod/Paracelsin
-- Source: https://github.com/AndreusAxolotl/Paracelsin  (same author as Muria, MIT)
-- License: MIT
-- Graphics: https://mods.factorio.com/mod/Paracelsin-Graphics
--
-- A frozen world farther than Aquilo (distance 42). Much colder, solid surface.
-- Ice, liquid nitrogen, cryovolcanic activity. Primary challenge: mining zinc
-- while managing clogging and freezing byproducts.
--
-- Unlock tech: "planet-discovery-paracelsin"
-- Prerequisites: rocket-turret (Vulcanus), advanced-asteroid-processing,
--                heating-tower (Aquilo), asteroid-reprocessing,
--                electromagnetic-science-pack (Fulgora)
-- → Explicitly post-Aquilo (requires heating-tower). Tier 3.

if not mods["Paracelsin"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "paracelsin",
    mod       = "Paracelsin",
    tech      = "planet-discovery-paracelsin",
    tier      = 3,
    gate_tech = nil,  -- already gated behind heating-tower (Aquilo)
})

-- Paracelsin × Muria: same author (AndreusAxolotl) — shared design language,
-- cross-recipes may already exist in the mods themselves. Check before adding.
-- Paracelsin × Aquilo: both extreme-cold planets. TODO: cold-chemistry cross-recipes.
if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["Muria"] then
        -- TODO: check if Paracelsin already uses Muria items natively.
    end
end
