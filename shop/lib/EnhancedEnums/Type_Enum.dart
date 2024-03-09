/// added to reduce error from string comperison

enum Types {
  ACOUSTIC,
  ELECTRIC;

  @override
  String toString() {
    switch (this) {
      case ACOUSTIC:
        return "acoustic";
      case ELECTRIC:
        return "“electric”";
      default:
        return "unspecified";
    }
  }
}
