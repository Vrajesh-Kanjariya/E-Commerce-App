import 'dart:convert';

import 'package:e_commerce_app/util/constants/api_constant.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  // Helper method to make GET request
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('${ApiConstants.baseUrl}/$endPoint'));
    return _handleResponse(response);
  }

  // Helper method to make POST request
  static Future<Map<String, dynamic>> post(String endPoint, dynamic data, {Map<String, String>? headers}) async {
    final response = await http.post(
      Uri.parse('${ApiConstants.baseUrl}/$endPoint'),
      headers: headers ?? {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make PUT request
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data, {Map<String, String>? headers}) async {
    final response = await http.put(
      Uri.parse('${ApiConstants.baseUrl}/$endPoint'),
      headers: headers ?? {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('${ApiConstants.baseUrl}/$endPoint'));
    return _handleResponse(response);
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}