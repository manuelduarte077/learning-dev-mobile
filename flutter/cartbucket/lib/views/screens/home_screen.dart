import 'package:cartbucket/sample.dart';
import 'package:cartbucket/views/widgets/banner.dart';
import 'package:cartbucket/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/product_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// APPBAR
            const CustomAppBar(),

            /// BANNER
            const MainBanner(),

            /// LIST PRODUCT
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return ProductTile(product: product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
