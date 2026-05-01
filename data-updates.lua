-- Data-updates stage: runs after all mods' data.lua. Use for patches that need
-- to read what other mods registered before modifying anything.

require("compat.conflicts")
