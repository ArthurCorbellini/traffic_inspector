import 'dart:io';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class EvidenceLocation {
  const EvidenceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  final double latitude;
  final double longitude;
  final String address;
}

class Evidence {
  Evidence({
    required this.title,
    required this.image,
    required this.location,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  final EvidenceLocation location;
}
