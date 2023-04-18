import 'package:flutter/material.dart';

import 'package:traffic_inspector/data/dummy_evidences.dart';
import 'package:traffic_inspector/widgets/new_post.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void _addPost() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const NewPost(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed de infrações'),
        actions: [IconButton(onPressed: _addPost, icon: const Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: evidences.length,
        itemBuilder: (ctx, idx) => ListTile(
          title: Text(evidences[idx].author),
        ),
      ),
    );
  }
}
