enum SolarIconWeight {
  bold,
  broken,
  linear,
  outline,
  boldDuotone,
  lineDuotone,
}

extension SolarIconWeightX on SolarIconWeight {
  bool get isDuotone => this == SolarIconWeight.boldDuotone || this == SolarIconWeight.lineDuotone;
}
