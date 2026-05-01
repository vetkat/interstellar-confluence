-- OMNI / Omnia
-- OMNI:  https://mods.factorio.com/mod/omni    (The Unlicense — Public Domain)
-- Omnia: https://mods.factorio.com/mod/omnia   (GNU GPLv3)
-- Library: https://mods.factorio.com/mod/omnilib

-- OMNI is a PUBLIC DOMAIN mod — no licensing restrictions at all.
-- OMNI: An abandoned artificial planet 10,000 km beyond the solar system edge.
--   Unlocked after Aquilo. Requires 1,000,000 of EVERY science pack.
--   Combines two liquids with Berengotengo fruit into science/products.
--   Intense Fulgora-style lightning + enhanced enemy variants. EXTREME endgame.
--   No GitHub/source listed. Tech name: TODO (verify in-game).
--
-- Omnia: Port of Omnimatter. A planet covered in sparse purple omnite ore.
--   Once ore depletes, terrain becomes buildable. Omnite → all basic ores.
--   Can start here via Any Planet Start. No GitHub/source.
--   Tech name: TODO (verify in-game).

local util = require("compat.util")

if mods["omni"] then
    util.register_planet({
        name      = "omni",         -- TODO: verify exact prototype name
        mod       = "omni",
        tech      = "planet-discovery-omni",  -- TODO: verify (no source available)
        tier      = 3,   -- extremely late game: requires 1M of every science pack
        gate_tech = nil, -- mod self-gates at extreme cost; no additional gate needed
    })
end

if mods["omnia"] then
    util.register_planet({
        name      = "omnia",        -- TODO: verify exact prototype name
        mod       = "omnia",
        tech      = "planet-discovery-omnia",  -- TODO: verify (no source available)
        tier      = 1,   -- can use Any Planet Start → Tier 1 or starting world
        gate_tech = nil,
    })
end
