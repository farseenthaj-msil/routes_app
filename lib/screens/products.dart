import 'package:flutter/material.dart';
import 'package:routes_app/main.dart';
import './cart.dart';
import './favorites.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            }, 
            icon: Icon(
              Icons.logout),)
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/mycart', arguments: 'T-Shirt');
              },
              child: const Text('My Cart'),
            ),
            ElevatedButton(
              child: Text('Favourites'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FavouritesScreen('Jacket'),),
                    );
              },
              ),
              Text('T-Shirt'),
              Text('Jacket')
               
          ],
        ),
      ),
    );
  }
}