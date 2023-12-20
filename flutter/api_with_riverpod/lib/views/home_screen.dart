import 'package:api_with_riverpod/controller/product_controller.dart';
import 'package:api_with_riverpod/views/product_tile.dart';
import 'package:api_with_riverpod/views/product_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API with Riverpod'),
      ),
      body: FutureBuilder(
        future: ref.watch(productControllerProvider).getProducts(),
        builder: (context, snapshot) {
          snapshot.data;

          if (snapshot.hasError) {
            return const Text('Something went wrong!');
          }

          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final products = snapshot.data!;

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return ProductTile(
                id: product.id,
                title: product.title,
                description: product.description,
                thumbnail: product.thumbnail,
                price: product.price.toString(),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductViewScreen(product: product),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
