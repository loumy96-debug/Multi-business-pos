import 'package:flutter/material.dart';
import '../cart/cart_item.dart';

class ReceiptPage extends StatelessWidget {
  final List<CartItem> cartItems;
  final double total;

  const ReceiptPage({
    super.key,
    required this.cartItems,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipt'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sales Receipt',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...cartItems.map(
              (item) => Text(
                '${item.product.name}  x${item.quantity}  -  TZS ${item.product.price}',
              ),
            ),
            const Divider(height: 32),
            Text(
              'TOTAL: TZS $total',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
