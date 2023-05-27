import 'package:flutter/material.dart';

import 'package:traffic_inspector/models/evidence.dart';
import 'package:traffic_inspector/screens/evidences_detail_screen.dart';

class EvidencesListWidget extends StatelessWidget {
  const EvidencesListWidget({super.key, required this.evidences});

  final List<Evidence> evidences;

  @override
  Widget build(BuildContext context) {
    if (evidences.isEmpty) {
      return Center(
        child: Text(
          'Não há evidências documentadas.',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      );
    }

    return ListView.builder(
      itemCount: evidences.length,
      itemBuilder: (ctx, index) => ListTile(
        leading: CircleAvatar(
          backgroundImage: FileImage(evidences[index].image),
          radius: 26,
        ),
        title: Text(
          evidences[index].title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) =>
                  EvidencesDetailScreen(evidence: evidences[index]),
            ),
          );
        },
      ),
    );
  }
}
