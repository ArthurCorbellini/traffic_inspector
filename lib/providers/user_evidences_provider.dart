import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:traffic_inspector/models/evidence.dart';

class UserEvidencesNotifier extends StateNotifier<List<Evidence>> {
  UserEvidencesNotifier() : super(const []);

  void addEvidence(String title, File image, EvidenceLocation location) {
    final newEvidence =
        Evidence(title: title, image: image, location: location);
    state = [newEvidence, ...state];
  }
}

final userEvidencesProvider =
    StateNotifierProvider<UserEvidencesNotifier, List<Evidence>>(
  (ref) => UserEvidencesNotifier(),
);
