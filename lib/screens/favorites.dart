import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  String productName;
  FavouritesScreen(this.productName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Products'),
            ),
            Text(productName),
        ]
      )
      ),
    );
  }
}