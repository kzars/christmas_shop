import 'package:flutter/material.dart';
import '../data/products.dart';
import '../widgets/product_card.dart';
import '../widgets/cart_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('🎄 Current Screen: Home Screen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Christmas Shop'),
        actions: const [CartIcon()],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        // Hey! This is like a factory that makes product cards!
        // - context: Helps the factory know how things should look
        // - index: Like a number ticket (0,1,2,3...) for each product
        // For example:
        // When index is 0, it makes a card for the first product
        // When index is 1, it makes a card for the second product
        // When index is 2, it makes a card for the third product
        // And so on!
        itemBuilder: (context, index) => ProductCard(product: products[index]),
      ),
    );
  }
} 