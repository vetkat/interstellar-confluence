-- Moshine
-- Mod: https://mods.factorio.com/mod/Moshine
-- Source: https://github.com/snouz/Moshine
-- License: MIT
-- Assets: https://mods.factorio.com/mod/Moshine-assets
--
-- A very hot desert planet rich in metals (neodymium, silicon).
-- Contains 26 technologies, 5 buildings, original music.
-- Distance: 6 (inner solar system, hot desert)
--
-- Unlock tech: "planet-discovery-moshine"
-- Prerequisites: "coal-liquefaction" (Vulcanus-tier), "electromagnetic-plant" (Fulgora)
-- → Requires both Vulcanus AND Fulgora. No extra gate needed.

if not mods["Moshine"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "moshine",
    mod       = "Moshine",
    tech      = "planet-discovery-moshine",
    tier      = 1,
    gate_tech = nil,  -- already gated behind coal-liquefaction + electromagnetic-plant
})

-- Moshine × Muria: both are chemistry-heavy. TODO: cross-recipes once item names confirmed.
if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["Muria"] then
        -- TODO: add cross-recipes combining Moshine metals with Muria chemicals.
    end
end
