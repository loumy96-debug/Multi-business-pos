import 'package:flutter/material.dart';

void main() {
  runApp(const PosApp());
}

class PosApp extends StatelessWidget {
  const PosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi Business POS',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Multi Business POS'),
        ),
        body: const Center(
          child: Text(
            'POS App Started',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
