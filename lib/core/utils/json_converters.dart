class JsonConverters {
  static bool fromStringToBool(String value) {
    return value == '1';
  }

  static String fromBoolToString(bool value) {
    return value ? '1' : '0';
  }

  static bool fromIntToBool(int value) {
    return value == 1;
  }

  static int fromBoolToInt(bool value) {
    return value ? 1 : 0;
  }

  // TODO modify format
  static DateTime fromStringToDateTime(String value) {
    return DateTime.parse(value);
  }

  // TODO modify format
  static String fromDateTimeToString(DateTime value) {
    return value.toIso8601String();
  }

  static ({double latitude, double longitude}) fromStringToLocation(
      String value) {
    final values = value.split(',');

    final ({double latitude, double longitude}) coordinates =
        (latitude: double.parse(values[0]), longitude: double.parse(values[1]));

    return coordinates;
  }

  static String fromLocationToString(
      ({double latitude, double longitude}) coordinates) {
    return '${coordinates.latitude},${coordinates.longitude}';
  }
}
