## 1.0.4

- Bumped package version to `1.0.4`.
- Fixed `BoldDuotone/Arrows Action/Exit` knob as a true transparent cutout in font outlines.
- Synced README install version and example manifest version.

## 1.0.3

- Bumped package version to `1.0.3`.
- Synced documentation and install snippet to `^1.0.3`.
- Updated example manifest version for release consistency.
- Fixed `BoldDuotone/Arrows Action/Exit` knob to render as a transparent cutout (background-visible), not a tinted overlay.

## 1.0.2

- Simplified `SolarIcon` color API to two inputs:
  - `color`
  - optional `secondaryColor`
- Added automatic duotone/multitone color derivation:
  - layer 2: `secondaryColor` or `color.withAlpha(128)`
  - layer 3: `(secondaryColor ?? color).withAlpha(64)`
  - layer 4: `(secondaryColor ?? color).withAlpha(32)`
- Expanded dartdoc coverage across public API to target full documentation quality:
  - `SolarIcon`, `SolarIconData`, `SolarIconWeight`, and `SolarIconWeightX`.
  - All `SolarIcons.*` constants.
  - Public duotone layer codepoint sets.
- Improved package metadata and docs consistency for publishing:
  - Added FluttyUI attribution in package description/docs.
  - Updated repository URL to `https://github.com/FluttyUI/solaricons`.

## 1.0.1

- Fixed `BoldDuotone/Arrows Action/Exit` doorknob rendering and layer order.
- Fixed `LineDuotone/Network, IT, Programming/Satellite` layer split so all parts render (not a solid block).
- Fixed `BoldDuotone/Electronic, Devices/Airbuds` primary/secondary split for correct earbud sides.
- Fixed `BoldDuotone/Electronic, Devices/Airbuds Left` missing speaker cutout.
- Fixed `BoldDuotone/Electronic, Devices/Airbuds Right` missing speaker cutout.
- Fixed `BoldDuotone/Electronic, Devices/Airbuds Charge` missing speaker cutout.
- Fixed `BoldDuotone/Electronic, Devices/Airbuds Check` missing speaker cutout.
- Fixed `BoldDuotone/Electronic, Devices/Airbuds Remove` missing speaker cutout.
- Fixed duotone layer extraction for grouped opacity/color-based SVGs to avoid missing or extra parts.

## 1.0.0

- Initial stable release.
- Added 1246 icons.
- Added 6 weights: Bold, Broken, Linear, Outline, BoldDuotone, LineDuotone.
- Added multi-layer duotone rendering with optional secondary/tertiary/quaternary colors.
- Added publishing metadata and example app.
