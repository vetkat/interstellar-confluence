-- Startup settings — toggled before the data stage runs.

data:extend({
    {
        type = "bool-setting",
        name = "ic-enable-tech-tree-balancing",
        setting_type = "startup",
        default_value = true,
        order = "a",
    },
    {
        type = "bool-setting",
        name = "ic-enable-conflict-resolution",
        setting_type = "startup",
        default_value = true,
        order = "b",
    },
    {
        type = "bool-setting",
        name = "ic-enable-cross-planet-recipes",
        setting_type = "startup",
        default_value = true,
        order = "c",
    },
    {
        type = "bool-setting",
        name = "ic-enable-surface-condition-patches",
        setting_type = "startup",
        default_value = true,
        order = "d",
    },
    -- Tier gate: which vanilla milestone unlocks Tier-1 community planets.
    -- "rocket"  = after launching the first rocket (interplanetary-travel tech)
    -- "aquilo"  = after reaching Aquilo (harder gate)
    {
        type = "string-setting",
        name = "ic-tier1-gate",
        setting_type = "startup",
        default_value = "rocket",
        allowed_values = { "rocket", "aquilo" },
        order = "e",
    },
})
