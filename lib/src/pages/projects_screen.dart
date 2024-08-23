import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meine Projekte'),
      ),
      body: const Center(
        child: Text('Hier kannst du eine Liste deiner Projekte anzeigen.'),
      ),
    );
  }
}
