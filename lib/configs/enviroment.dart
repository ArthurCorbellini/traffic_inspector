class Enviroment {
  static const String googleMapsApiKey = String.fromEnvironment(
    "GOOGLE_MAPS_API_KEY",
    defaultValue: 'GOOGLE_MAPS_API_KEY not found',
  );
}
