import 'package:flutter/material.dart';

class PosDashboardPage extends StatelessWidget {
  final String businessName;

  const PosDashboardPage({
    super.key,
    required this.businessName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POS - $businessName'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'POS Dashboard\n(Products & Cart coming next)',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
