-- Cerys, Moon of Fulgora
-- Mod: https://mods.factorio.com/mod/Cerys-Moon-of-Fulgora
-- Source: https://github.com/danielmartin0/Cerys-Moon-of-Fulgora
-- License: CC BY-NC-ND 4.0 — do NOT copy any Cerys assets or code.
--          Referencing prototype names in compatibility code is fine.
--
-- A frozen moon orbiting Fulgora (distance 1.39 in moon orbit).
-- Players repair derelict Fulgoran structures including a plutonium reactor.
--
-- Unlock tech: "moon-discovery-cerys" (NOT "planet-discovery-cerys")
-- Prerequisites: planet-discovery-fulgora, nuclear-power,
--                kovarex-enrichment-process, productivity-module-2,
--                speed-module-2, energy-shield-equipment
-- → Already fully gated behind Fulgora + nuclear research. No extra gate needed.

if not mods["Cerys-Moon-of-Fulgora"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "cerys",
    mod       = "Cerys-Moon-of-Fulgora",
    tech      = "moon-discovery-cerys",
    tier      = 2,
    gate_tech = nil,  -- already gated behind planet-discovery-fulgora + nuclear-power
})

-- No cross-mod recipes: CC BY-NC-ND license means we must not derive content from Cerys.
-- Safe to READ cerys item names from data.raw for non-creative compatibility patches.
