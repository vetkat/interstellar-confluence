-- Lignumis
-- Mod: https://mods.factorio.com/mod/lignumis
-- Source: https://git.cacklingfiend.info/cacklingfiend/lignumis  (lignumis/ subdirectory)
-- License: GNU GPLv3
-- Director's Cut variant: https://mods.factorio.com/mod/lignumis-cf
-- Assets: https://mods.factorio.com/mod/lignumis-assets
--
-- Lignumis is a moon of Nauvis accessible BEFORE escaping to Nauvis itself.
-- The mod extends the very early game by placing players on this forested moon first,
-- introducing wood and steam science packs as the initial technology tier.
-- Wood science packs cannot be imported; they must be produced on-moon.
--
-- Planet name: "lignumis"
-- Unlock tech: "planet-discovery-lignumis"
-- Prerequisites: automation-science-pack ONLY (10 packs — accessible before leaving Nauvis!)
-- → Tier 1: literally the earliest possible planet unlock.
--
-- Note: Lignumis injects its wood/steam science packs into all lab inputs and into
-- technology prerequisites matching certain criteria. Any planet mod whose labs are
-- patched by Lignumis will automatically gain the wood/steam pack requirement when
-- both mods are active. No extra patch needed on our side.

if not mods["lignumis"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "lignumis",
    mod       = "lignumis",
    tech      = "planet-discovery-lignumis",
    tier      = 1,
    gate_tech = nil,  -- prereq is automation-science-pack only; accessible before leaving Nauvis
})

-- Lignumis × Gleba: both are biology-heavy planets with non-mining resource chains.
-- TODO: cross-mod bioprocessing recipe if both active (wood → Gleban substrate, etc.).
if settings.startup["ic-enable-cross-planet-recipes"].value then
    if mods["lignumis"] and mods["gleba"] then
        -- TODO: Lignumis wood-chain × Gleba biolab recipes.
    end
end
