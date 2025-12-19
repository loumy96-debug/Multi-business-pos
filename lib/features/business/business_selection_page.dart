import 'package:flutter/material.dart';

class BusinessSelectionPage extends StatelessWidget {
  const BusinessSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final businesses = [
      'Shop A',
      'Shop B',
      'Shop C',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Business'),
      ),
      body: ListView.builder(
        itemCount: businesses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(businesses[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Next step later
            },
          );
        },
      ),
    );
  }
}
