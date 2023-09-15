import 'package:http/http.dart' as http;

class ProductRepository {
  Future<http.Response> getProducts() async {
    final url = Uri.parse('https://dummyjson.com/products');
    final response = await http.get(url);

    return response;
  }
}
