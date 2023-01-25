import 'package:flutter/material.dart';
import './screens/products.dart';
import './screens/cart.dart';
import './screens/favorites.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Routes - Sample App',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/products': (context) => const ProductScreen(),
        '/mycart': (context) => MyCartScreen(),
        '/favourites': (context) =>  FavouritesScreen(''),

      },
    ),
  );
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/products');
          },
          child: const Text('Login'),
        ),
      ),
      );
  }
}