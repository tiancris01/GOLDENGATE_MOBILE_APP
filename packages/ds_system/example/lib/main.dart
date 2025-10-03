import 'package:flutter/material.dart';
import 'atom_button_demo.dart';

void main() {
  runApp(const DSSystemExampleApp());
}

class DSSystemExampleApp extends StatelessWidget {
  const DSSystemExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DS System Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('DS System Example')),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Atom Button Demo'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const AtomButtonDemo()),
                );
              },
            ),
            // Add more demo screens here
          ],
        ),
      ),
    );
  }
}
