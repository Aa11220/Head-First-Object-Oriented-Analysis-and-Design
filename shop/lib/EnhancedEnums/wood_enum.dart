/// added to reduce error from string comperison

enum Woods {
  INDIAN_ROSEWOOD,
  BRAZILIAN_ROSEWOOD,
  MAHOGANY,
  MAPLE,
  COCOBOLO,
  CEDAR,
  ADIRONDACK,
  ALDER,
  SITKA;

  @override
  String toString() {
    switch (this) {
      case INDIAN_ROSEWOOD:
        return "INDIAN ROSEWOOD";
      case BRAZILIAN_ROSEWOOD:
        return "BRAZILIAN ROSEWOOD";
      case MAHOGANY:
        return "MAHOGANY";
      case MAPLE:
        return "MAPLE";
      case COCOBOLO:
        return "COCOBOLO";
      case CEDAR:
        return "CEDAR";
      case ADIRONDACK:
        return "ADIRONDACK";
      case ALDER:
        return "ALDER";
      case SITKA:
        return "SITKA";
      default:
        return "unspecified";
    }
  }
}
