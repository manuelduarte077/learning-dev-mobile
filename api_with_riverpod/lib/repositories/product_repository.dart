import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final productRepositoryProvider = Provider((ref) => ProductRepository());

class ProductRepository {
  Future<http.Response> getProducts() async {
    final url = Uri.parse('https://dummyjson.com/products');
    final response = await http.get(url);

    return response;
  }
}
