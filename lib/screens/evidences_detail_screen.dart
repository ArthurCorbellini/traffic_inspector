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
      body: Stack(
        children: [
          Image.file(
            evidence.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}
