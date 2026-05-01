-- Data-final-fixes stage: runs last, after all mods' data-updates.lua.
-- Apply tech-tree balancing and surface condition patches here so we always
-- have the final picture of what every mod registered.

require("compat.tech-tree")
require("compat.surface-conditions")
