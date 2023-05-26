import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:traffic_inspector/models/evidence.dart';

class UserEvidencesNotifier extends StateNotifier<List<Evidence>> {
  UserEvidencesNotifier() : super(const []);

  void addEvidence(String title) {
    final newEvidence = Evidence(title: title);
    state = [newEvidence, ...state];
  }
}

final userEvidencesProvider =
    StateNotifierProvider<UserEvidencesNotifier, List<Evidence>>(
  (ref) => UserEvidencesNotifier(),
);
