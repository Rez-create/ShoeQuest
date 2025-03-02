import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl =
      'http://your-api-base-url.com'; //Replace with the base API URL

  // helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl$endpoint'));
    return _handResponse(response);
  }

  // Helper method to make POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl$endpoint'),
      headers: {'content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handResponse(response);
  }

  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl$endpoint'),
      headers: {'content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handResponse(response);
  }

  // Helper method to make DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint, dynamic data) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl$endpoint'),
    );
    return _handResponse(response);
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
