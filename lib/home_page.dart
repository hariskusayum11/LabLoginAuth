import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home - Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _logout(context); // Call the logout function
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index]),
              leading: Icon(Icons.shopping_cart),
            );
          },
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    // Navigate back to the LoginPage
    Navigator.pushReplacementNamed(context, '/');
  }
}
