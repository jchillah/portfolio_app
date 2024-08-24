import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Über mich'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            const Text(
              'Seit ich das erste Mal in die Welt der Programmierung eingetaucht bin, habe ich eine besondere Leidenschaft für die Entwicklung von Apps mit Flutter entwickelt. Die Möglichkeit, schöne und leistungsstarke Benutzeroberflächen mit nur einer Codebasis für verschiedene Plattformen zu erstellen, hat mich von Anfang an begeistert. Flutter erlaubt es mir, meine kreativen Ideen in die Tat umzusetzen und gleichzeitig effizienten und eleganten Code zu schreiben.\n\n'
              'Die Freude an der Programmierung mit Flutter liegt nicht nur in der Technologie selbst, sondern auch in der Gemeinschaft und den stetigen Innovationen, die Flutter mit sich bringt. Die regelmäßigen Updates und die Unterstützung durch eine engagierte Community machen es spannend und motivierend, ständig neue Dinge zu lernen und umzusetzen.\n\n'
              'Neben meiner Arbeit mit Flutter suche ich gerne nach Herausforderungen und Gelegenheiten, meine Fähigkeiten weiterzuentwickeln. Eine Plattform, auf der ich mich besonders wohlfühle, ist Codewars. Dort liebe ich es, mich an anspruchsvollen Coding-Challenges zu versuchen, neue Techniken zu erlernen und mich mit anderen Entwicklern zu messen. Die ständige Herausforderung, komplexe Probleme zu lösen und dabei neue Lösungsansätze zu entdecken, motiviert mich und hilft mir, als Entwickler kontinuierlich zu wachsen.\n\n'
              'Die Freude an der Programmierung mit Flutter und die Begeisterung für das Lösen von Herausforderungen sind für mich eine ständige Quelle der Motivation und Inspiration. Jeder Tag in der Programmierung ist eine neue Gelegenheit, etwas Neues zu lernen und meine Fähigkeiten weiter zu verbessern. Wenn ich nicht gerade an meinem neuesten Flutter-Projekt arbeite oder eine neue Challenge bei Codewars löse, genieße ich es, in der Community aktiv zu sein, meine Erfahrungen zu teilen und von anderen Entwicklern zu lernen.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Weitere Links',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => _launchURL(
                  'https://my-personal-cv-app-65750.firebaseapp.com/'),
              child: const Text(
                'Mein für die IT relevanter Lebenslauf(CV)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => _launchURL('https://github.com/jchillah'),
              child: const Text(
                'Mein GitHub Account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    debugPrint('Attempting to launch $uri');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Could not launch $uri');
      throw 'Could not launch $url';
    }
  }
}
