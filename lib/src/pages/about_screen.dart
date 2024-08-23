import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Über mich'),
      ),
      body: const Center(
        child: Text('Hier kannst du Informationen über dich hinzufügen.'),
      ),
    );
  }
}
