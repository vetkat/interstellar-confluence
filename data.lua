-- Data stage: runs first. Load planet stubs that only apply when the planet mod is present.
-- Each file guards itself with: if not mods["mod-name"] then return end

local planet_files = {
    -- Major named planet mods
    "cerys",
    "moshine",
    "muria",
    "nexus",
    "paracelsin",
    "pyroclast",
    "velora",
    "virentis",
    "lignumis",
    "maraxsis",
    "ribbonia",
    "rubia",
    "foliax",
    "tenebris-prime",
    "terrapalus",
    "voidcraft",
    "carna",
    "castra",
    "igrys",
    "insectitron",
    "iridescent",
    "arcanyx",
    "solar-halo",
    "solar-matrix",
    "omni",
    "pelagos",
    "obsidiax",
    "linox",
    "corrundum",
    "cubium",
    "panglia",
    "dea-dia",
    "janus",
    "secretas",
    "moon-eneas",
    -- Planet packs / series
    "planet-pack",   -- planet-arrakis, planet-crucible, planet-froodara, etc.
    "planetaris",    -- planetaris-arig, planetaris-dyes, planetaris-hyarion, planetaris-tellus
    "skewer",        -- skewer_planet_vesta, skewer_shattered_planet
    "muluna",        -- planet-muluna + muluna-* support mods
}

for _, name in ipairs(planet_files) do
    require("compat.planets." .. name)
end
