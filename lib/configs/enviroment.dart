import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String get googleMapsApyKey {
    return dotenv.get(
      'GOOGLE_MAPS_API_KEY',
      fallback: 'GOOGLE_MAPS_API_KEY not found',
    );
  }
}
