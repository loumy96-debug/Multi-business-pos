import 'package:flutter/material.dart';
import '../products/product_list_page.dart';
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
      body: Center(
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ProductListPage(),
        ),
      );
    },
    child: const Text('View Products'),
  ),
),
