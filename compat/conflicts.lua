-- Recipe and item conflict resolution (data-updates stage).
-- Runs after all mods' data.lua so we can see everything that's been registered.
--
-- Pattern: if two loaded mods both add a prototype with the same name, one
-- clobbers the other. We detect these and rename/redirect as needed.
-- New conflicts should be added here as they're discovered during playtesting.

if not settings.startup["ic-enable-conflict-resolution"].value then return end

local util = require("compat.util")

-- ── Known recipe conflicts ────────────────────────────────────────────────────
--
-- Format:
--   { mod_a, mod_b, prototype_type, name, resolution }
--
-- resolution = "prefer_a"          keep mod_a's version, remove mod_b's
--            = "prefer_b"          keep mod_b's version, remove mod_a's
--            = "rename_b:<newname>" rename mod_b's entry to <newname>
--            = "merge"             custom merge logic defined in the entry's `merge` fn

local known_conflicts = {
    -- TODO: populate from playtesting.
    -- Example entry (commented out — fill in real ones):
    --
    -- {
    --     mod_a = "Moshine",
    --     mod_b = "Muria",
    --     prototype_type = "recipe",
    --     name = "some-conflicting-recipe",
    --     resolution = "prefer_a",
    -- },
}

for _, conflict in ipairs(known_conflicts) do
    if mods[conflict.mod_a] and mods[conflict.mod_b] then
        local proto = data.raw[conflict.prototype_type]
        if not proto then goto continue end

        local resolution = conflict.resolution

        if resolution == "prefer_a" then
            -- mod_a already won if it loaded after mod_b; ensure mod_b's
            -- entry is gone. (data.raw entries are unique by name so this is
            -- usually a no-op — both mods wrote the same key, last wins.)
            -- Nothing to do without knowing load order; log a warning.
            util.warn("conflict on " .. conflict.prototype_type .. " '" .. conflict.name
                      .. "' between " .. conflict.mod_a .. " and " .. conflict.mod_b
                      .. " — resolution 'prefer_a' requires manual verification")

        elseif resolution == "prefer_b" then
            util.warn("conflict on " .. conflict.prototype_type .. " '" .. conflict.name
                      .. "' between " .. conflict.mod_a .. " and " .. conflict.mod_b
                      .. " — resolution 'prefer_b' requires manual verification")

        elseif resolution and resolution:sub(1, 8) == "rename_b" then
            -- No-op scaffold; real rename logic goes here once we know exact shapes.
            local new_name = resolution:sub(10)
            util.warn("conflict: would rename '" .. conflict.name .. "' → '" .. new_name .. "' (not yet implemented)")

        elseif resolution == "merge" and conflict.merge then
            conflict.merge(proto[conflict.name])
        end

        ::continue::
    end
end

-- ── Item name collision scan ──────────────────────────────────────────────────
-- Scan all items/fluids for names that appear in more than one planet mod's
-- namespace. Logs to the factorio log file so you can find problems while
-- iterating without having to crash the game.
--
-- Disabled by default (expensive); enable for debugging.
local SCAN_ENABLED = false

if SCAN_ENABLED then
    local planet_mod_items = {}  -- item_name → list of mods that touch it

    -- This is a rough heuristic: we can't know which mod created a prototype
    -- at data-updates time, so we just report duplicates against our known list.
    -- A proper audit needs mod-order-aware tooling.
    for type_name, protos in pairs({ item = data.raw.item, fluid = data.raw.fluid }) do
        for name, _ in pairs(protos) do
            _ = _  -- luacheck
            if planet_mod_items[name] then
                util.warn("potential duplicate " .. type_name .. ": '" .. name .. "'")
            end
            planet_mod_items[name] = true
        end
    end
end
