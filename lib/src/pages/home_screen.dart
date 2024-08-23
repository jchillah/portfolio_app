import 'package:flutter/material.dart';
import 'package:portfolio_app/src/pages/about_screen.dart';
import 'package:portfolio_app/src/pages/contact_screen.dart';
import 'package:portfolio_app/src/pages/projects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Willkommen zu meinem Portfolio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hallo, ich bin Max Mustermann',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
              child: const Text('Über mich'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProjectsScreen()),
                );
              },
              child: const Text('Meine Projekte'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactScreen()),
                );
              },
              child: const Text('Kontakt'),
            ),
          ],
        ),
      ),
    );
  }
}
