-- Skewer planet pack: Vesta + Shattered Planet (extended)
-- Mods: https://mods.factorio.com/mod/skewer_planet_vesta
--       https://mods.factorio.com/mod/skewer_shattered_planet
-- License: GNU LGPLv3 (both)
-- Source: N/A for both (no public repository)

if not mods["skewer_planet_vesta"] and not mods["skewer_shattered_planet"] then return end

local util = require("compat.util")

-- ── Vesta ────────────────────────────────────────────────────────────────────────────────────
-- A gas giant with six available gases: helium, nitrogen, methane, hydrogen,
-- sulfur-hydroxide, carbon dioxide. Core mechanic: bioengineering calcifying algae to
-- convert gases into basic materials via Combustion Furnace + Electrolyzer.
-- Rewards: Fusion Robots (streamlined method), Fusion Thrusters, Fusion Missiles,
--          productivity enhancements. Configurable island quantity/size.
--
-- Planet prototype name: "vesta"  (TODO: verify — no source available)
-- Unlock tech: "planet-discovery-vesta"  (TODO: verify — no source available)
-- Prerequisites: unknown (TODO — gas-giant + algae theme suggests mid-game, Tier 2).
if mods["skewer_planet_vesta"] then
    util.register_planet({
        name      = "vesta",
        mod       = "skewer_planet_vesta",
        tech      = "planet-discovery-vesta",  -- TODO: verify
        tier      = 2,
        gate_tech = nil,  -- TODO: verify actual prerequisites
    })
end

-- ── Shattered Planet (extended) ───────────────────────────────────────────────────────────────
-- IMPORTANT: skewer_shattered_planet EXTENDS the vanilla Shattered Planet rather than
-- adding a new planet prototype. The original Shattered Planet (built into base game) remains.
-- The mod adds new content to it and introduces "Lost Beyond" as a final completion tech.
-- No new planet prototype to register — the vanilla "shattered-planet" prototype already exists.
-- If Shattered Planet completion gating is needed, patch the "lost-beyond" tech here instead.
if mods["skewer_shattered_planet"] then
    -- No register_planet call: the planet already exists in vanilla data.raw.
    -- TODO: if we ever want to ensure this mod's content is behind a certain gate,
    --       use util.add_prereq("lost-beyond", gate_tech_name) here.
end
