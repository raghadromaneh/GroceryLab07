import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:part1/screens/SelectProduct.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 244, 220),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/grocery.png",
                width: 140,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "G  r  o  c  e  r  y",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Anton",
                  color: Color.fromARGB(255, 4, 90, 88),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                height: 60,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) {
                            return SelectProduct();
                          }),
                        ),
                      );
                    });
                  },
                  child: Text(
                    "Start your order",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Color.fromARGB(255, 4, 90, 88),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
