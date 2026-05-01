-- Igrys
-- Mod: https://mods.factorio.com/mod/Igrys
-- Source: https://github.com/EgorexW/Igrys  (master branch)
-- License: MIT
--
-- Magic-powered science, advanced glassworking, alternative production chains.
-- Planet name: "igrys", distance 14 (between Fulgora and Gleba).
--
-- Unlock tech: "planet-discovery-igrys"
-- Prerequisites: "metallurgic-science-pack" (Vulcanus), "igrys-glassworking"
-- → Requires Vulcanus science pack. Tier 1.
-- Note: "igrys-glassworking" is an early Igrys research that feeds into
-- the discovery tech chain — not a chicken-and-egg situation.

if not mods["Igrys"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "igrys",
    mod       = "Igrys",
    tech      = "planet-discovery-igrys",
    tier      = 1,
    gate_tech = nil,  -- already gated behind metallurgic-science-pack (Vulcanus)
})
