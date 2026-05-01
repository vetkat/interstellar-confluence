# Interstellar Confluence

A compatibility and balancing layer for Factorio Space Age community planet mods.

When you play with multiple planet mods at the same time, they tend to ignore each other: tech prerequisites overlap, recipes conflict, and planets unlock at nonsensical points in the progression. Interstellar Confluence fixes that without touching any other mod's content.

## What it does

- **Tech-tree balancing** — groups community planets into three tiers based on when they are reachable in a vanilla Space Age progression, then gates each tier behind the appropriate milestone.
- **Conflict resolution** — detects and resolves recipe or item name collisions between planet mods.
- **Cross-planet recipes** — optionally adds crafting chains that combine outputs from multiple planet mods (e.g. Maraxsis fish + Pelagos coconut oil).
- **Surface condition patches** — normalises surface property values across mods so shared mechanics (e.g. temperature, pressure) behave consistently.

Everything is opt-out via startup settings. Installing the mod with no planet mods active is a no-op.

## Supported planet mods

| Mod | Planet(s) | Tier |
|-----|-----------|------|
| [Cerys — Moon of Fulgora](https://mods.factorio.com/mod/Cerys-Moon-of-Fulgora) | Cerys | 1 |
| [Moshine](https://mods.factorio.com/mod/Moshine) | Moshine | 2 |
| [Muria](https://mods.factorio.com/mod/Muria) | Muria | 1 |
| [Nexus](https://mods.factorio.com/mod/Nexus) | Nexus | 2 |
| [Paracelsin](https://mods.factorio.com/mod/Paracelsin) | Paracelsin | 2 |
| [Pyroclast](https://mods.factorio.com/mod/Pyroclast) | Pyroclast | 1 |
| [Velora](https://mods.factorio.com/mod/Velora) | Velora | 2 |
| [Virentis](https://mods.factorio.com/mod/virentis) | Virentis | 1 |
| [Lignumis](https://mods.factorio.com/mod/lignumis) | Lignumis | 1 |
| [Maraxsis](https://mods.factorio.com/mod/maraxsis) | Maraxsis | 2 |
| [Ribbonia](https://mods.factorio.com/mod/ribbonia) | Ribbonia | 2 |
| [Rubia](https://mods.factorio.com/mod/rubia) | Rubia | 1 |
| [Foliax](https://mods.factorio.com/mod/foliax) | Foliax | 1 |
| [Tenebris Prime](https://mods.factorio.com/mod/tenebris-prime) | Tenebris Prime | 3 |
| [Terra Palus](https://mods.factorio.com/mod/terrapalus) | Terra Palus | 2 |
| [Voidcraft](https://mods.factorio.com/mod/Voidcraft) | Voidcraft planets | varies |
| [Carna](https://mods.factorio.com/mod/carna) | Carna | 2 |
| [Castra](https://mods.factorio.com/mod/castra) | Castra | 1 |
| [Igrys](https://mods.factorio.com/mod/Igrys) | Igrys | 1 |
| [Insectitron](https://mods.factorio.com/mod/Insectitron) | Insectitron | 1 |
| [Iridescent Industry](https://mods.factorio.com/mod/IridescentIndustry) | Iridescent | 2 |
| [Arcanyx](https://mods.factorio.com/mod/Arcanyx) | Arcanyx | 3 |
| [Solar Halo](https://mods.factorio.com/mod/Solar-Halo) | Solar Halo | 1 |
| [Solar Matrix](https://mods.factorio.com/mod/SolarMatrix) | Solar Matrix | 2 |
| [OMNI](https://mods.factorio.com/mod/omni) / [Omnia](https://mods.factorio.com/mod/omnia) | Omni / Omnia | 3 / 1 |
| [Pelagos](https://mods.factorio.com/mod/pelagos) | Pelagos | 2 |
| [Obsidiax](https://mods.factorio.com/mod/obsidiax) | Obsidiax | 3 |
| [Linox](https://mods.factorio.com/mod/linox) | Linox | 1 |
| [Corrundum](https://mods.factorio.com/mod/corrundum) | Corrundum | 2 |
| [Cubium](https://mods.factorio.com/mod/cubium) | Cubium | 1 |
| [Panglia](https://mods.factorio.com/mod/panglia_planet) | Panglia | 1 |
| [DEA-DIA System](https://mods.factorio.com/mod/dea-dia-system) | DEA / DIA | 1 |
| [Janus](https://mods.factorio.com/mod/janus-reshifted) | Janus | 2 |
| [Secretas](https://mods.factorio.com/mod/secretas) | Secretas + Frozeta | 3 |
| [Moon Eneas](https://mods.factorio.com/mod/moon-eneas) | Eneas | 1 |
| [Planet Pack](https://mods.factorio.com/mod/planet-arrakis) | Arrakis, Crucible, Froodara, Gerkizia, Hexalith, Ithurice, Mickora, Muluna, Nekohaven, Quadromire, Rabbasca, Tapatrion, Tchekor, Vicrox, Zzhora, Erimos Prime | varies |
| [Planetaris series](https://mods.factorio.com/mod/planetaris-arig) | Arig, Hyarion, Tellus | 1–2 |
| [Skewer](https://mods.factorio.com/mod/skewer_planet_vesta) | Vesta, Shattered Planet | 2 |
| [Muluna](https://mods.factorio.com/mod/planet-muluna) | Muluna | 1 |

## Startup settings

| Setting | Default | Description |
|---------|---------|-------------|
| `ic-enable-tech-tree-balancing` | `true` | Gate community planets behind the appropriate vanilla milestone |
| `ic-enable-conflict-resolution` | `true` | Patch recipe and item conflicts between planet mods |
| `ic-enable-cross-planet-recipes` | `true` | Add optional cross-planet crafting chains |
| `ic-enable-surface-condition-patches` | `true` | Normalise surface property values across mods |
| `ic-tier1-gate` | `rocket` | Milestone that unlocks Tier 1 planets: `rocket` or `aquilo` |

## Installation

### From the Factorio mod portal
Search for **Interstellar Confluence** in the in-game mod browser.

### Manual (native Linux)
```bash
cp -r interstellar-confluence ~/.factorio/mods/interstellar-confluence_0.1.0
```

### Manual (Steam on Linux via Proton)
Steam runs Factorio through the Windows compatibility layer (Proton), so the mods directory is inside the Proton prefix:
```bash
PROTON_MODS="$HOME/.local/share/Steam/steamapps/compatdata/427520/pfx/drive_c/users/steamuser/AppData/Roaming/Factorio/mods"
cp -r interstellar-confluence "$PROTON_MODS/interstellar-confluence_0.1.0"
```

### Development workflow (Proton)
The repo lives at `~/.factorio/mods/interstellar-confluence_0.1.0/`. After editing files, sync them to the Proton mods directory and then press **F5** in Factorio to reload mods:

```bash
# Sync once
./sync.sh

# Or watch for changes and sync automatically
./sync.sh --watch
```

`sync.sh --watch` uses `inotifywait` to detect file saves and syncs immediately, so you only need to press F5 in-game to pick up your edits. The git post-commit hook also runs `sync.sh` automatically after every commit.

## Tier system

Planets are grouped into three tiers that mirror vanilla Space Age's progression:

- **Tier 1** — unlockable around the time of Vulcanus / Fulgora / Gleba. Gated behind `interplanetary-travel` (first rocket launch) or `planet-discovery-aquilo` depending on the `ic-tier1-gate` setting.
- **Tier 2** — Aquilo-level destinations. Require cryogenic or space science packs.
- **Tier 3** — Post-Aquilo endgame content.

The tier is a *minimum* gate. Mods that already require higher-tier science packs in their own prerequisites are left alone; we only add prerequisites, never remove them.

## License

MIT — see individual `compat/planets/*.lua` files for notes on the licenses of each supported mod. This mod references prototype names only; it does not copy, bundle, or redistribute any other mod's assets or source code.