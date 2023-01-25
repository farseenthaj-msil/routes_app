import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final productName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to Products'),
            ),
            Text(productName),
          ],
        ),
      ),
    );
  }
}