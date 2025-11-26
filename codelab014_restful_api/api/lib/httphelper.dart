import 'dart:io'; 
import 'package:http/http.dart' as http; 
import 'dart:convert'; 
import 'pizza.dart'; 

class HttpHelper {
  final String authority = '8564e.wiremockapi.cloud';
  final String path = 'pizzalist';
  static final HttpHelper _httpHelper = HttpHelper._internal();
  HttpHelper._internal();
  factory HttpHelper() {
    return _httpHelper;
  }
  
  Future<List<Pizza>> getPizzaList() async {
    try {
      final Uri url = Uri.https(authority, path);
      print('Fetching from URL: $url');
      
      final http.Response result = await http.get(url).timeout(
        const Duration(seconds: 10),
      );
      
      print('Status Code: ${result.statusCode}');
      print('Response Body: ${result.body}');
      
      if (result.statusCode == HttpStatus.ok) {
        final jsonResponse = json.decode(result.body);
        List<Pizza> pizzas =
            jsonResponse.map<Pizza>((i) => 
              Pizza.fromJson(i)).toList();
        print('Successfully loaded ${pizzas.length} pizzas from API');
        return pizzas;
      } else {
        print('API returned error status: ${result.statusCode}');
        throw Exception('Failed to load pizzas. Status code: ${result.statusCode}');
      }
    } catch (e) {
      print('Error fetching pizzas: $e');
      print('Using dummy data as fallback');
      // Jika API gagal, return data dummy untuk testing
      return _getDummyPizzas();
    }
  }
  
  List<Pizza> _getDummyPizzas() {
    return [
      Pizza(
        id: 1,
        pizzaName: 'Margherita',
        description: 'Classic pizza with tomato sauce and mozzarella',
        price: 8.50,
        imageUrl: 'https://example.com/margherita.jpg',
      ),
      Pizza(
        id: 2,
        pizzaName: 'Pepperoni',
        description: 'Pizza with pepperoni and cheese',
        price: 10.00,
        imageUrl: 'https://example.com/pepperoni.jpg',
      ),
      Pizza(
        id: 3,
        pizzaName: 'Vegetarian',
        description: 'Pizza with fresh vegetables',
        price: 9.50,
        imageUrl: 'https://example.com/vegetarian.jpg',
      ),
      Pizza(
        id: 4,
        pizzaName: 'Hawaiian',
        description: 'Pizza with ham and pineapple',
        price: 11.00,
        imageUrl: 'https://example.com/hawaiian.jpg',
      ),
    ];
  }
}