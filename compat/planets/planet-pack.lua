-- Standalone planet-* mods (small, self-contained planet mods)
-- Each is listed as an optional dependency in info.json and registered here
-- if present. Tier assignments are placeholders — update after playtesting.

local util = require("compat.util")

local planet_pack = {
    -- mod id                 planet name           tech (TODO: verify crucible/erimos-prime)  tier
    -- planet names verified via PlanetsLib compat or source: arrakis, hexalith, ithurice, mickora,
    -- tapatrion, tchekor, zzhora, gerkizia, quadromire, froodara, nekohaven, vicrox, rabbasca.
    -- rabbasca: orbits Gleba by default (configurable); prereqs gun-turret + power-armor + parent discovery.
    -- crucible (GitLab, restricted), erimos-prime (no source): names/techs unverified.
    { "planet-arrakis",   "arrakis",    "planet-discovery-arrakis",    1 },
    { "planet-crucible",  "crucible",   "planet-discovery-crucible",   2 },
    { "planet-froodara",  "froodara",   "planet-discovery-froodara",   1 },
    { "planet-gerkizia",  "gerkizia",   "planet-discovery-gerkizia",   2 },
    { "planet-hexalith",  "hexalith",   "planet-discovery-hexalith",   2 },
    { "planet-ithurice",  "ithurice",   "planet-discovery-ithurice",   1 },
    { "planet-mickora",   "mickora",    "planet-discovery-mickora",    2 },
    { "planet-nekohaven", "nekohaven",  "planet-discovery-nekohaven",  1 },
    { "planet-quadromire","quadromire", "planet-discovery-quadromire", 2 },
    { "planet-rabbasca",  "rabbasca",   "planet-discovery-rabbasca",   2 },
    { "planet-tapatrion", "tapatrion",  "planet-discovery-tapatrion",  2 },
    { "planet-tchekor",   "tchekor",    "planet-discovery-tchekor",    3 },
    { "planet-vicrox",    "vicrox",     "planet-discovery-vicrox",     2 },
    { "planet-zzhora",    "zzhora",     "planet-discovery-zzhora",     3 },
    { "planet_erimos_prime","erimos-prime","planet-discovery-erimos-prime",2 },
}

local any_active = false
for _, entry in ipairs(planet_pack) do
    local mod_id, planet_name, tech_name, tier = entry[1], entry[2], entry[3], entry[4]
    if mods[mod_id] then
        any_active = true
        util.register_planet({
            name  = planet_name,
            mod   = mod_id,
            tech  = tech_name,
            tier  = tier,
        })
    end
end

-- planet-request-group: groups these planets in the planet selection UI.
-- No data patches needed — it reads the planet list automatically.
