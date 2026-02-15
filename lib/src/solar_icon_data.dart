/// Immutable icon data wrapper used by [SolarIcon] and [SolarIcons].
class SolarIconData {
  /// Unicode code point mapped to an icon glyph in the font.
  final int codePoint;

  /// Creates icon data from a glyph [codePoint].
  const SolarIconData(this.codePoint);
}
