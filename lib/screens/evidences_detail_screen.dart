import 'package:flutter/material.dart';

import 'package:traffic_inspector/models/evidence.dart';

class EvidencesDetailScreen extends StatelessWidget {
  const EvidencesDetailScreen({super.key, required this.evidence});

  final Evidence evidence;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(evidence.title),
      ),
      body: Center(
        child: Text(
          evidence.title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
