-- Voidcraft
-- Mod: https://mods.factorio.com/mod/Voidcraft
-- License: GNU GPLv3
-- Compatibility: https://mods.factorio.com/mod/voidcraft-planetary-compatibility
--
-- NOTE: Voidcraft does NOT add a planet. It adds a crafting mechanic for creating
-- items from energy, plus three new science packs and a tech tree extension.
-- It is included as a dependency because voidcraft-planetary-compatibility
-- patches Voidcraft recipes to use planet-specific items.
--
-- No planet to register. No surface conditions to patch.
-- Our only job here is to ensure Voidcraft's tech tree doesn't conflict with
-- other mods' science pack requirements.

if not mods["Voidcraft"] then return end

local util = require("compat.util")

-- voidcraft-planetary-compatibility already handles cross-planet recipe patching.
-- Nothing else needed unless a conflict with a specific planet mod is discovered.
if mods["voidcraft-planetary-compatibility"] then
    -- TODO: review voidcraft-planetary-compatibility's patches for any conflicts
    -- with planet mods in our registry.
end
