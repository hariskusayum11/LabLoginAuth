import 'dart:convert';
import 'package:labflutter1_280867/models/user_model.dart';
import 'package:labflutter1_280867/varibles.dart'; // Import ตัวแปร apiURL
import 'package:http/http.dart' as http;

class AuthService {
  // Login method
  Future<UserModel?> login(String username, String password) async {
    print(username);
    final response = await http.post(
      Uri.parse("$apiURL/api/auth/login"), // Adjust URL as needed
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'user_name': username,
        'password': password,
      }),
    );

    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return UserModel.fromJson(data);
    } else {
      throw Exception('Failed to login');
    }
  }

  // Register method
Future<void> register(String username, String password, String name, String role) async {
    final response = await http.post(
      Uri.parse("$apiURL/api/auth/register"),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'user_name': username,
        'password': password,
        'name': name,
        'role': role,
      }),
    );

    print('Response body: ${response.body}');  // Print the response body

    if (response.statusCode == 201) {
      // If registration is successful, handle success (e.g., navigate to login page)
      print('User registered successfully');
      return; // No need to return UserModel if the response isn't JSON
    } else {
      throw Exception('Failed to register');
    }
  }
}
