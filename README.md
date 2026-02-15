# FluttySolarIcons

`flutty_solar_icons` is a Flutter icon package generated from SVG sources.  
Flutter port created by FluttyUI.

It provides 1246 icons across 6 weights:
- `bold`
- `broken`
- `linear`
- `outline`
- `boldDuotone`
- `lineDuotone`

The API is designed for direct use in widgets and keeps icon access flat (`SolarIcons.*`), while the showcase app can still group by category.

## Installation

Add the dependency:

```yaml
dependencies:
  flutty_solar_icons: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Basic usage

```dart
import 'package:flutty_solar_icons/solar_icons_flutter.dart';

SolarIcon(
  SolarIcons.Person,
  weight: SolarIconWeight.linear,
  color: Colors.blue,
  size: 24,
)
```

## Duotone and multi-layer usage

Some icons use 2+ layers. You can provide extra colors optionally.

```dart
SolarIcon(
  SolarIcons.Leaf,
  weight: SolarIconWeight.lineDuotone,
  color: const Color(0xFF1E293B),
  secondaryColor: const Color(0xFFF97316),
  tertiaryColor: const Color(0xFF14B8A6),
  quaternaryColor: const Color(0xFF8B5CF6),
  size: 28,
)
```

For non-duotone weights, only `color` is used.

## API

- `SolarIcon` widget
- `SolarIcons` icon constants
- `SolarIconWeight` enum
- `SolarIconData`

## Example

A runnable example is included in `/example`.

## License

MIT License. See [LICENSE](LICENSE).
