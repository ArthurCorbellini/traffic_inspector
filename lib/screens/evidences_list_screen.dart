import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traffic_inspector/providers/user_evidences_provider.dart';

import 'package:traffic_inspector/screens/evidences_add_screen.dart';
import 'package:traffic_inspector/widgets/evidences_list_widget.dart';

class EvidencesListScreen extends ConsumerWidget {
  const EvidencesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userEvidences = ref.watch(userEvidencesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Evidências'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const EvidencesAddScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: EvidencesListWidget(
        evidences: userEvidences,
      ),
    );
  }
}
