-- Runtime control stage. Currently minimal — most work is done at data stage.
-- Add event handlers here as cross-mod runtime needs are identified.

local ic = {}

-- Fired when a player reaches a new surface for the first time.
-- Use this to trigger cross-mod planet arrival events if needed.
script.on_event(defines.events.on_player_changed_surface, function(event)
    -- TODO: cross-mod arrival hooks
end)

-- Convenience: log which planet mods are active at startup.
script.on_init(function()
    local active = {}
    local planet_mods = {
        "Cerys-Moon-of-Fulgora", "Moshine", "Muria", "Nexus", "Paracelsin",
        "Pyroclast", "Velora", "virentis", "lignumis", "maraxsis",
        "ribbonia", "rubia", "foliax", "tenebris-prime", "terrapalus",
        "Voidcraft", "carna", "castra", "Igrys", "Insectitron",
        "IridescentIndustry", "Arcanyx", "Solar-Halo", "SolarMatrix",
        "omni", "pelagos", "obsidiax", "linox", "corrundum", "cubium",
        "panglia_planet", "dea-dia-system", "janus-reshifted", "secretas",
        "moon-eneas", "planet-arrakis", "planet-crucible", "planet-froodara",
        "planet-gerkizia", "planet-hexalith", "planet-ithurice", "planet-mickora",
        "planet-muluna", "planet-nekohaven", "planet-quadromire", "planet-rabbasca",
        "planet-tapatrion", "planet-tchekor", "planet-vicrox", "planet-zzhora",
        "planet_erimos_prime", "planetaris-arig", "planetaris-dyes",
        "planetaris-hyarion", "planetaris-tellus", "skewer_planet_vesta",
        "skewer_shattered_planet",
    }
    for _, mod_name in ipairs(planet_mods) do
        if script.active_mods[mod_name] then
            table.insert(active, mod_name)
        end
    end
    if #active > 0 then
        log("[interstellar-confluence] Active planet mods: " .. table.concat(active, ", "))
    end
end)

script.on_load(function()
    -- Restore any runtime state here when loading a save.
end)
