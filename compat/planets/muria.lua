-- Muria
-- Mod: https://mods.factorio.com/mod/Muria
-- Source: https://github.com/AndreusAxolotl/Muria  (MIT license)
-- Graphics: https://mods.factorio.com/mod/Muria-Graphics
--
-- Placed between Gleba (distance ~30) and Aquilo in the solar system (distance 32).
-- The mod already gates planet-discovery-muria behind:
--   "rocket-turret" (Vulcanus), "advanced-asteroid-processing", "asteroid-reprocessing"
-- so we do NOT add a redundant tier gate here (gate_tech = nil).
--
-- Key items: chlorine-salts, muriatic-solution, eschatotaxite-fungi (all original to Muria).
-- New machines: acidworking-plant, smelting-plant.
-- Science pack: muriatic-science-pack.

if not mods["Muria"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "muria",
    mod       = "Muria",
    tech      = "planet-discovery-muria",
    tier      = 1,   -- pre-Aquilo; accessible after Vulcanus + asteroid processing
    gate_tech = nil, -- mod's own prereqs already enforce correct placement
})

-- Muria × Fulgora: "holmium-chloride" tech needs "foundation" (Fulgora) + Muria science.
-- This cross-dependency is already defined inside the Muria mod itself — no patch needed.

-- Muria × Gleba: both require Gleban tech as a stepping-stone.
-- "offworld-chlorane-production" needs "biter-egg-handling" (Gleba).
-- Already wired in Muria's own tech tree — no patch needed.

-- Cross-mod recipe hooks (MIT license allows referencing Muria items by name):
-- TODO: add recipes here that combine Muria outputs with items from other planet mods.
-- Known Muria output items to reference:
--   "chlorine-salts", "muriatic-solution", "lead-plate", "chlorane", "holmium-chloride"
if settings.startup["ic-enable-cross-planet-recipes"].value then
    -- Example placeholder: Muria × Maraxsis (both chemistry-heavy):
    -- if mods["maraxsis"] then
    --     util.add_recipe({ ... })
    -- end
end
