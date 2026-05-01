-- Iridescent Industry
-- Mod: https://mods.factorio.com/mod/IridescentIndustry
-- Source: N/A
-- License: GNU GPLv3
--
-- NOTE: IridescentIndustry does NOT add a new planet.
-- It adds a cross-planet progression system (prismite/essence chain) that spans
-- all vanilla Space Age planets: prismite on Nauvis, crimson essence on Vulcanus,
-- verdant essence on Gleba, azure essence on Fulgora, refined prismite on Aquilo.
-- It is a dependency of Arcanyx (which uses IridescentIndustry's prismite system).
--
-- No planet to register. No tech tree balancing needed.
-- If conflicts arise between IridescentIndustry's essence recipes and other mods'
-- use of those vanilla planet machines, add patches here.

if not mods["IridescentIndustry"] then return end

-- IridescentIndustry × Arcanyx: Arcanyx depends on this mod directly.
-- No extra compat needed on our side.

-- IridescentIndustry × other planet mods: if a planet mod also produces
-- an "essence"-named fluid/item, flag it as a potential conflict.
-- TODO: scan for "essence" item conflicts during playtesting.
