-- Panglia
-- Mod: https://mods.factorio.com/mod/panglia_planet
-- Source: https://github.com/snouz/timeshift_planet  (same author as Moshine)
-- License: MIT
-- Assets: https://mods.factorio.com/mod/panglia_planet_assets
--
-- An advanced planet with time-dilation zones and cloning technology (distance 22).
-- Resources: Branbalite, Panglite. Described as "following Moshine" in progression.
-- NOTE: Still in BETA5; balance may change significantly.
--
-- Planet name: "panglia"
-- Unlock tech: "panglia_planet_discovery_panglia" (non-standard naming!)
-- Prerequisites: Agricultural Science Pack (Gleba), Foundry (Vulcanus)
-- → Requires both Vulcanus AND Gleba. Tier 1-2.

if not mods["panglia_planet"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "panglia",
    mod       = "panglia_planet",
    tech      = "panglia_planet_discovery_panglia",
    tier      = 2,
    gate_tech = nil,  -- already gated behind agricultural-science-pack + foundry
})

-- Panglia × Moshine: same author (snouz), likely designed as sequential content.
-- Check if Panglia references any Moshine items natively before adding cross-recipes.
if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["Moshine"] then
        -- TODO: check if Panglia uses Moshine items natively (snouz may have wired this).
    end
end
