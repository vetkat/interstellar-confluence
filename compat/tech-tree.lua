-- Tech-tree balancing (data-final-fixes stage).
-- Reads the planet registry built by individual planet compat files and
-- gates each community planet behind the appropriate vanilla milestone.
--
-- Tier gates (configurable via startup settings):
--   Tier 1 planets → require "interplanetary-travel" (after first rocket)
--                    OR "planet-discovery-aquilo"   (if ic-tier1-gate = "aquilo")
--   Tier 2 planets → require "planet-discovery-aquilo"
--   Tier 3 planets → require a late-game science tech (TODO: define when scope is clearer)

if not settings.startup["ic-enable-tech-tree-balancing"].value then return end

local util = require("compat.util")

local TIER_GATES = {
    [1] = settings.startup["ic-tier1-gate"].value == "aquilo"
          and "planet-discovery-aquilo"
          or  "interplanetary-travel",
    [2] = "planet-discovery-aquilo",
    [3] = "planet-discovery-aquilo",  -- TODO: replace with a harder gate once defined
}

local registry = util.get_registry()

for planet_name, cfg in pairs(registry) do
    -- Skip planets whose mod isn't actually loaded.
    if mods[cfg.mod] then
        local tech_name = cfg.tech
        local gate     = cfg.gate_tech or TIER_GATES[cfg.tier or 1]

        if tech_name and gate then
            if util.has_tech(tech_name) and util.has_tech(gate) then
                util.add_prereq(tech_name, gate)
            else
                if not util.has_tech(tech_name) then
                    util.warn("planet '" .. planet_name .. "': unlock tech '" .. tech_name .. "' not found in data.raw")
                end
                if not util.has_tech(gate) then
                    util.warn("planet '" .. planet_name .. "': gate tech '" .. gate .. "' not found in data.raw")
                end
            end
        end
    end
end

-- ── PlanetsLibTiers integration ───────────────────────────────────────────────
-- If PlanetsLibTiers is present it provides its own tier API. We defer to it
-- so our manual prerequisite patches don't double-up.
--
-- TODO: once PlanetsLibTiers API is confirmed, replace the loop above with:
--
-- if mods["PlanetsLibTiers"] then
--     for planet_name, cfg in pairs(registry) do
--         if mods[cfg.mod] then
--             PlanetsLibTiers.set_tier(planet_name, cfg.tier or 1)
--         end
--     end
-- end
