import 'dart:convert';

import 'package:api_with_riverpod/models/product.dart';
import 'package:api_with_riverpod/repositories/product_repository.dart';

class ProductController {
  final _productRepository = ProductRepository();

  Future<List<Product>> getProducts() async {
    final response = await _productRepository.getProducts();
    final data = jsonDecode(response.body);

    List<Product> products = [];
    final productJson = data['products'];

    for (dynamic productJson in productJson) {
      products.add(Product.fromJson(productJson));
    }

    return products;
  }
}
