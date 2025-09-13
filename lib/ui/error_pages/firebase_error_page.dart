import 'package:flutter/material.dart';

class FirebaseErrorPage extends StatelessWidget {
  const FirebaseErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firebase Error')),
      body: const Center(child: Text('Firebase Error Page')),
    );
  }
}
