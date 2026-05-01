-- Arcanyx
-- Mod: https://mods.factorio.com/mod/Arcanyx
-- Source: N/A
-- License: GNU GPLv3
-- Assets: https://mods.factorio.com/mod/ArcanyxAssets
--
-- A magical world where wood is the only familiar resource on arrival.
-- Primary resources: prismite and voidstone (converted via voidcrafting and prismorphing).
-- Pollution triggers "spirit guardians" that curse buildings and clog belts —
-- players must invest in pollution mitigation.
-- Depends on: Voidcraft (energy→item crafting) and IridescentIndustry (prismite system).
--
-- Tech name: "planet-discovery-arcanyx"  (TODO: verify — no source available)
-- Prerequisites: unknown (TODO: verify — likely requires IridescentIndustry progression
--                and Voidcraft tech tree)
-- Tier: 2 (magical/exotic; depends on mid-game systems from Voidcraft + IridescentIndustry)

if not mods["Arcanyx"] then return end

local util = require("compat.util")

-- Only register if both required dependencies are also present.
if not mods["IridescentIndustry"] then
    log("[interstellar-confluence] WARNING: Arcanyx is active but IridescentIndustry is missing — Arcanyx may not function correctly.")
end

util.register_planet({
    name      = "arcanyx",
    mod       = "Arcanyx",
    tech      = "planet-discovery-arcanyx",  -- TODO: verify
    tier      = 2,
    gate_tech = nil,  -- TODO: verify actual prerequisites
})
