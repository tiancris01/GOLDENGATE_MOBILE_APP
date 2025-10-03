import 'package:flutter/material.dart';

class AtomButtonDemo extends StatelessWidget {
  const AtomButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Atom Button Demo'),
      ),
    );
  }
}
