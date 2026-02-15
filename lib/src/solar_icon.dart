import 'package:flutter/widgets.dart';

import 'duotone_layer_codepoints.dart';
import 'solar_icon_data.dart';
import 'solar_icon_weight.dart';

/// Renders a Solar icon from [SolarIcons] with an optional weight and colors.
class SolarIcon extends StatelessWidget {
  /// The icon glyph to render.
  final SolarIconData icon;

  /// The icon style/weight family.
  final SolarIconWeight weight;

  /// Primary color used for the main glyph layer.
  final Color? color;

  /// Secondary color for duotone icons.
  ///
  /// If not provided, duotone layer 2 uses `color.withAlpha(128)`.
  final Color? secondaryColor;

  /// Icon size in logical pixels.
  final double? size;

  /// Creates a Solar icon widget.
  const SolarIcon(
    this.icon, {
    super.key,
    this.weight = SolarIconWeight.linear,
    this.color,
    this.secondaryColor,
    this.size,
  });

  /// Builds the icon with one or more layered glyphs depending on [weight].
  @override
  Widget build(BuildContext context) {
    final primaryData = IconData(
      icon.codePoint,
      fontFamily: _primaryFamily(weight),
      fontPackage: 'flutty_solar_icons',
    );

    if (!weight.isDuotone) {
      return Icon(primaryData, color: color, size: size);
    }

    final layerChildren = <Widget>[];
    final placeTertiaryOnTop = _needsPrimaryBeforeTertiary(weight, icon.codePoint);
    final derivedSecondaryColor = secondaryColor ?? color?.withAlpha(128);
    final derivedOverlayBaseColor = secondaryColor ?? color;
    final derivedTertiaryColor = derivedOverlayBaseColor?.withAlpha(64);
    final derivedQuaternaryColor = derivedOverlayBaseColor?.withAlpha(32);

    final layer4Family = _layerFamily(weight, 4);
    if (derivedQuaternaryColor != null && layer4Family != null && _hasLayer(weight, 4)) {
      layerChildren.add(
        Icon(
          IconData(icon.codePoint, fontFamily: layer4Family, fontPackage: 'flutty_solar_icons'),
          color: derivedQuaternaryColor,
          size: size,
        ),
      );
    }

    final layer3Family = _layerFamily(weight, 3);
    final hasLayer3 = derivedTertiaryColor != null && layer3Family != null && _hasLayer(weight, 3);

    final layer2Family = _layerFamily(weight, 2);
    if (derivedSecondaryColor != null && layer2Family != null && _hasLayer(weight, 2)) {
      layerChildren.add(
        Icon(
          IconData(icon.codePoint, fontFamily: layer2Family, fontPackage: 'flutty_solar_icons'),
          color: derivedSecondaryColor,
          size: size,
        ),
      );
    }

    if (!placeTertiaryOnTop && hasLayer3) {
      layerChildren.add(
        Icon(
          IconData(icon.codePoint, fontFamily: layer3Family, fontPackage: 'flutty_solar_icons'),
          color: derivedTertiaryColor,
          size: size,
        ),
      );
    }

    layerChildren.add(Icon(primaryData, color: color, size: size));

    if (placeTertiaryOnTop && hasLayer3) {
      layerChildren.add(
        Icon(
          IconData(icon.codePoint, fontFamily: layer3Family, fontPackage: 'flutty_solar_icons'),
          color: derivedTertiaryColor,
          size: size,
        ),
      );
    }

    if (layerChildren.length == 1) {
      return layerChildren.first;
    }

    return Stack(alignment: Alignment.center, children: layerChildren);
  }

  String _primaryFamily(SolarIconWeight weight) {
    switch (weight) {
      case SolarIconWeight.bold:
        return 'SolarBold';
      case SolarIconWeight.broken:
        return 'SolarBroken';
      case SolarIconWeight.linear:
        return 'SolarLinear';
      case SolarIconWeight.outline:
        return 'SolarOutline';
      case SolarIconWeight.boldDuotone:
        return 'SolarBoldDuotonePrimary';
      case SolarIconWeight.lineDuotone:
        return 'SolarLineDuotonePrimary';
    }
  }

  String? _layerFamily(SolarIconWeight weight, int layer) {
    switch (weight) {
      case SolarIconWeight.boldDuotone:
        switch (layer) {
          case 2:
            return 'SolarBoldDuotoneSecondary';
          case 3:
            return 'SolarBoldDuotoneTertiary';
          case 4:
            return 'SolarBoldDuotoneQuaternary';
          default:
            return null;
        }
      case SolarIconWeight.lineDuotone:
        switch (layer) {
          case 2:
            return 'SolarLineDuotoneSecondary';
          case 3:
            return 'SolarLineDuotoneTertiary';
          case 4:
            return 'SolarLineDuotoneQuaternary';
          default:
            return null;
        }
      default:
        return null;
    }
  }

  bool _hasLayer(SolarIconWeight weight, int layer) {
    switch (weight) {
      case SolarIconWeight.boldDuotone:
        switch (layer) {
          case 2:
            return boldDuotoneSecondaryCodePoints.contains(icon.codePoint);
          case 3:
            return boldDuotoneTertiaryCodePoints.contains(icon.codePoint);
          case 4:
            return boldDuotoneQuaternaryCodePoints.contains(icon.codePoint);
          default:
            return false;
        }
      case SolarIconWeight.lineDuotone:
        switch (layer) {
          case 2:
            return lineDuotoneSecondaryCodePoints.contains(icon.codePoint);
          case 3:
            return lineDuotoneTertiaryCodePoints.contains(icon.codePoint);
          case 4:
            return lineDuotoneQuaternaryCodePoints.contains(icon.codePoint);
          default:
            return false;
        }
      default:
        return false;
    }
  }

  bool _needsPrimaryBeforeTertiary(SolarIconWeight weight, int codePoint) {
    return weight == SolarIconWeight.boldDuotone && codePoint == 0xe00d;
  }
}
