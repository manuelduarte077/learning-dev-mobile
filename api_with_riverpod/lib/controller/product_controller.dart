import 'dart:convert';

import 'package:api_with_riverpod/models/product.dart';
import 'package:api_with_riverpod/repositories/product_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productControllerProvider = Provider((ref) {
  final productRepository = ref.watch(productRepositoryProvider);

  return ProductController(productRepository: productRepository);
});

class ProductController {
  final ProductRepository _productRepository;

  ProductController({required ProductRepository productRepository})
      : _productRepository = productRepository;

  Future<List<Product>> getProducts() async {
    final response = await _productRepository.getProducts();
    final data = jsonDecode(response.body);

    List<Product> products = [];
    final productsJson = data['products'];

    for (dynamic productJson in productsJson) {
      products.add(Product.fromJson(productJson));
    }

    return products;
  }
}
