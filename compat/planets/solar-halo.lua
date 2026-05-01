-- Solar Halo
-- Mod: https://mods.factorio.com/mod/Solar-Halo
-- Source: https://github.com/ackeri/Solar-Halo
-- License: MIT
--
-- Adds "Near Solar Orbit" — a space location very close to the sun (distance 4).
-- Introduces heat-management power generation (halo-heat-energy fluid,
-- Supercomputer, Heatpump, Terminal, Navigation Computer).
--
-- IMPORTANT: space-location prototype name is "halo-solar-orbit" (not "solar-halo")
-- IMPORTANT: unlock tech is "halo-discovery-solar" (not "planet-discovery-solar-halo")
-- Prerequisites: "planet-discovery-vulcanus"
-- → Tier 1, accessible just after Vulcanus.

if not mods["Solar-Halo"] then return end

local util = require("compat.util")

util.register_planet({
    name      = "halo-solar-orbit",
    mod       = "Solar-Halo",
    tech      = "halo-discovery-solar",
    tier      = 1,
    gate_tech = nil,  -- already gated behind planet-discovery-vulcanus
})
