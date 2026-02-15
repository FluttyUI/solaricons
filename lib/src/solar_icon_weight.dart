/// Available Solar icon font families.
enum SolarIconWeight {
  /// Solid bold style.
  bold,

  /// Hand-drawn broken style.
  broken,

  /// Standard linear style.
  linear,

  /// Outline style.
  outline,

  /// Bold duotone style with up to four layers.
  boldDuotone,

  /// Line duotone style with up to four layers.
  lineDuotone,
}

/// Convenience helpers for [SolarIconWeight].
extension SolarIconWeightX on SolarIconWeight {
  /// Whether this weight uses multiple color layers.
  bool get isDuotone => this == SolarIconWeight.boldDuotone || this == SolarIconWeight.lineDuotone;
}
