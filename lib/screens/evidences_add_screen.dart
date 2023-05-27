import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:traffic_inspector/providers/user_evidences_provider.dart';
import 'package:traffic_inspector/widgets/image_input_widget.dart';

class EvidencesAddScreen extends ConsumerStatefulWidget {
  const EvidencesAddScreen({super.key});

  @override
  ConsumerState<EvidencesAddScreen> createState() {
    return _EvidencesAddScreenState();
  }
}

class _EvidencesAddScreenState extends ConsumerState<EvidencesAddScreen> {
  final _titleController = TextEditingController();
  File? _selectedImage;

  void _saveEvidence() {
    final title = _titleController.text;

    if (title.isEmpty || _selectedImage == null) return;

    ref
        .read(userEvidencesProvider.notifier)
        .addEvidence(title, _selectedImage!);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar evidência'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Título'),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
              controller: _titleController,
            ),
            const SizedBox(height: 16),
            ImageInput(onPickImage: (image) {
              _selectedImage = image;
            }),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Postar'),
              onPressed: _saveEvidence,
            )
          ],
        ),
      ),
    );
  }
}
