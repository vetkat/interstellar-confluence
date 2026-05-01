-- Planetaris series — by Syen-ce
-- GitHub org: https://github.com/Syen-ce
--
-- planetaris-arig:    https://mods.factorio.com/mod/planetaris-arig    (GPLv3)
-- planetaris-dyes:    https://mods.factorio.com/mod/planetaris-dyes    (GPLv3) — NOT A PLANET (colored dyes)
-- planetaris-hyarion: https://mods.factorio.com/mod/planetaris-hyarion (GPLv3)
-- planetaris-tellus:  https://mods.factorio.com/mod/planetaris-tellus  (MIT)
--
-- Arig:    Desert planet, sand sifting + cactus farming (no mining).
--          distance 12.5, tech "planet-discovery-arig",
--          prereqs: planet-discovery-vulcanus + metallurgic-science-pack → Tier 1.
--
-- Hyarion: Crystal/lava planet, light refraction rays (distance 22.5).
--          tech "planet-discovery-hyarion",
--          prereqs: electromagnetic-science-pack (Fulgora) → Tier 1.
--          Has compat with lignumis built in.
--
-- Tellus:  Biological/mycelia planet, dangerous parasites + pollen (distance 17.5, post-Gleba).
--          tech: "planet-discovery-tellus"
--          space_location: "tellus"
--          prereqs: planet-discovery-gleba + agricultural-science-pack → Tier 2.

local util = require("compat.util")

-- planetaris-dyes is NOT a planet — skip it.

if mods["planetaris-arig"] then
    util.register_planet({
        name      = "arig",
        mod       = "planetaris-arig",
        tech      = "planet-discovery-arig",
        tier      = 1,
        gate_tech = nil,  -- already gated behind metallurgic-science-pack + planet-discovery-vulcanus
    })
end

if mods["planetaris-hyarion"] then
    util.register_planet({
        name      = "hyarion",
        mod       = "planetaris-hyarion",
        tech      = "planet-discovery-hyarion",
        tier      = 1,
        gate_tech = nil,  -- already gated behind electromagnetic-science-pack (Fulgora)
    })
end

if mods["planetaris-tellus"] then
    util.register_planet({
        name      = "tellus",
        mod       = "planetaris-tellus",
        tech      = "planet-discovery-tellus",
        tier      = 2,
        gate_tech = nil,  -- already gated behind planet-discovery-gleba + agricultural-science-pack
    })
end

-- planetaris-dyes: factory decoration only (colored pipes, walls, tiles).
-- Nothing to register. No conflicts expected.
