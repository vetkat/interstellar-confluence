-- Shared utilities for interstellar-confluence compat files.
-- All functions guard against missing prototypes so callers don't need nil-checks.

local M = {}

-- ── Tech-tree helpers ─────────────────────────────────────────────────────────

-- Add `prereq` to `tech_name`'s prerequisites (no-op if already present or either missing).
function M.add_prereq(tech_name, prereq)
    local tech = data.raw.technology[tech_name]
    if not tech then return end
    if not data.raw.technology[prereq] then return end
    tech.prerequisites = tech.prerequisites or {}
    for _, p in ipairs(tech.prerequisites) do
        if p == prereq then return end
    end
    table.insert(tech.prerequisites, prereq)
end

-- Remove `prereq` from `tech_name`'s prerequisites.
function M.remove_prereq(tech_name, prereq)
    local tech = data.raw.technology[tech_name]
    if not tech or not tech.prerequisites then return end
    for i, p in ipairs(tech.prerequisites) do
        if p == prereq then
            table.remove(tech.prerequisites, i)
            return
        end
    end
end

-- Replace every occurrence of `old_prereq` with `new_prereq` in `tech_name`.
function M.replace_prereq(tech_name, old_prereq, new_prereq)
    local tech = data.raw.technology[tech_name]
    if not tech or not tech.prerequisites then return end
    if not data.raw.technology[new_prereq] then return end
    for i, p in ipairs(tech.prerequisites) do
        if p == old_prereq then
            tech.prerequisites[i] = new_prereq
            return
        end
    end
end

-- Set the research unit count for a technology (number of packs to consume).
function M.set_research_count(tech_name, count)
    local tech = data.raw.technology[tech_name]
    if not tech then return end
    tech.unit = tech.unit or {}
    tech.unit.count = count
end

-- ── Recipe helpers ────────────────────────────────────────────────────────────

-- Add a recipe prototype (skips silently if name already exists — first-wins).
function M.add_recipe(recipe_data)
    if data.raw.recipe[recipe_data.name] then return end
    data:extend({ recipe_data })
end

-- Add a recipe unlock to a technology's effects list.
function M.unlock_recipe(tech_name, recipe_name)
    local tech = data.raw.technology[tech_name]
    if not tech then return end
    if not data.raw.recipe[recipe_name] then return end
    tech.effects = tech.effects or {}
    for _, e in ipairs(tech.effects) do
        if e.type == "unlock-recipe" and e.recipe == recipe_name then return end
    end
    table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe_name })
end

-- ── Prototype existence checks ────────────────────────────────────────────────

function M.has_item(name)
    return data.raw.item[name] ~= nil
        or data.raw.fluid[name] ~= nil
        or data.raw["item-with-tags"] and data.raw["item-with-tags"][name] ~= nil
end

function M.has_recipe(name)
    return data.raw.recipe[name] ~= nil
end

function M.has_tech(name)
    return data.raw.technology[name] ~= nil
end

function M.has_planet(name)
    return data.raw.planet[name] ~= nil
end

-- ── Planet registry (populated by individual planet files) ───────────────────
--
-- Each planet file calls M.register_planet to record:
--   name        string   planet prototype name
--   mod         string   the mod that owns this planet
--   tech        string   technology that unlocks this planet
--   tier        number   1 = Vulcanus/Fulgora/Gleba level
--                        2 = Aquilo level
--                        3 = post-Aquilo / endgame
--   gate_tech   string?  override the automatic gate; nil = use tier default
--
-- tech-tree.lua reads this registry in data-final-fixes to apply balancing.

local _registry = {}

function M.register_planet(config)
    -- config = { name, mod, tech, tier, gate_tech? }
    _registry[config.name] = config
end

function M.get_registry()
    return _registry
end

-- ── Surface condition helpers ─────────────────────────────────────────────────

-- Merge `patches` into a planet's asteroid_spawn_definitions or surface conditions.
-- `patches` is a table of { property, min, max, order? } entries.
function M.patch_planet_conditions(planet_name, patches)
    local planet = data.raw.planet[planet_name]
    if not planet then return end
    planet.surface_properties = planet.surface_properties or {}
    for _, patch in ipairs(patches) do
        planet.surface_properties[patch.property] = {
            min = patch.min,
            max = patch.max,
        }
    end
end

-- ── Logging ───────────────────────────────────────────────────────────────────

function M.warn(msg)
    log("[interstellar-confluence] WARNING: " .. msg)
end

return M
