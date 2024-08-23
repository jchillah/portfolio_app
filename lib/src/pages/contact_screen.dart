import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontakt'),
      ),
      body: const Center(
        child: Text('Hier kannst du Kontaktinformationen anzeigen.'),
      ),
    );
  }
}
