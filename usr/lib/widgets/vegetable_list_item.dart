import 'package:flutter/material.dart';
import '../models/vegetable.dart';

class VegetableListItem extends StatelessWidget {
  final Vegetable vegetable;

  const VegetableListItem({super.key, required this.vegetable});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              vegetable.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(vegetable.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('\$${vegetable.price.toStringAsFixed(2)} / kg'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add to cart functionality
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
