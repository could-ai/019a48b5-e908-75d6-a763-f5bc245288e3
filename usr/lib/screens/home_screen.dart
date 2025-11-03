import 'package:flutter/material.dart';
import '../models/vegetable.dart';
import '../widgets/vegetable_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Vegetable> _vegetables = [
    Vegetable(name: 'Tomato', price: 2.5, imageUrl: 'https://images.unsplash.com/photo-1561155634-42561a2d5a38?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Vegetable(name: 'Carrot', price: 1.8, imageUrl: 'https://images.unsplash.com/photo-1590868309235-ea34bed7bd7f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Vegetable(name: 'Broccoli', price: 3.0, imageUrl: 'https://images.unsplash.com/photo-1587351177733-a03ef17c125a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Vegetable(name: 'Cucumber', price: 1.2, imageUrl: 'https://images.unsplash.com/photo-1628169494384-585b235fe7a8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Vegetable(name: 'Lettuce', price: 1.5, imageUrl: 'https://images.unsplash.com/photo-1556801712-84c173a56597?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Order'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to cart screen
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _vegetables.length,
        itemBuilder: (context, index) {
          return VegetableListItem(vegetable: _vegetables[index]);
        },
      ),
    );
  }
}
