import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 244, 220),
        body: Column(
          children: [
            BackButton(
              color: Color.fromARGB(255, 4, 90, 88),
            ),
          ],
        ),
      ),
    );
  }
}
