enum Units { celsius, kelvin, fhrenheit }

class ParametersRequest {
  final Units units;
  final String city;
  final bool darkMode;

  ParametersRequest({
    required this.units,
    required this.city,
    required this.darkMode,
  });
}
