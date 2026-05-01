-- Surface condition patches (data-final-fixes stage).
-- Factorio Space Age uses surface_properties on planet prototypes to gate
-- which buildings/recipes can function on a given surface
-- (e.g. temperature, pressure, gravity, magnetic-field).
--
-- When multiple planet mods are active they may each tweak the same
-- surface properties in conflicting ways. This file applies a final,
-- consistent pass so no planet ends up with broken conditions.

if not settings.startup["ic-enable-surface-condition-patches"].value then return end

local util = require("compat.util")

-- ── Known surface condition overrides ─────────────────────────────────────────
--
-- Add entries here as conflicts are discovered during playtesting.
-- Format matches util.patch_planet_conditions: { property, min, max }
--
-- Available surface properties (vanilla):
--   "pressure"        (kPa)
--   "temperature"     (°C)
--   "gravity"         (m/s²)
--   "magnetic-field"  (0-100)
--   "solar-power"     (0-100)
--   "atmospheric-oxygen" (0-100)

local overrides = {
    -- TODO: fill in from playtesting.
    -- Example (commented out):
    --
    -- ["moshine"] = {
    --     { property = "temperature", min = -20, max = 80 },
    -- },
}

for planet_name, patches in pairs(overrides) do
    if util.has_planet(planet_name) then
        util.patch_planet_conditions(planet_name, patches)
    end
end
