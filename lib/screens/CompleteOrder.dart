import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:part1/screens/cart.dart';

class CompleteOrder extends StatefulWidget {
  CompleteOrder({Key? key}) : super(key: key);

  @override
  State<CompleteOrder> createState() => _CompleteOrderState();
}

List Quantity = ["250 gm", "1 kg", "2 kg", "3 kg", "4kg"];
String defaultQuantnit = "1 kg";
String bagType = "";
bool extraCartonBags = false;
bool extraVegetableWash = false;

class _CompleteOrderState extends State<CompleteOrder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Caladea'),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 197, 244, 220),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(
                      color: Color.fromARGB(255, 4, 90, 88),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Cart();
                              },
                            ),
                          );
                        });
                      },
                      icon: Icon(Icons.shopping_basket),
                      color: Color.fromARGB(255, 4, 90, 88),
                      iconSize: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Please complete your order:",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 90, 88),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 350,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 4, 90, 88),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Choose quantity:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        width: 100,
                        child: DropdownButton(
                          value: defaultQuantnit,
                          items: Quantity.map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                "$e",
                                style: TextStyle(fontSize: 20),
                              ))).toList(),
                          onChanged: (val) {
                            setState(() {
                              defaultQuantnit = val.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 4, 90, 88),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Choose bag type:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            value: "plastic",
                            groupValue: bagType,
                            onChanged: (val) {
                              setState(() {
                                bagType = val.toString();
                              });
                            },
                          ),
                          Text(
                            "Plastic paper",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            value: "carton",
                            groupValue: bagType,
                            onChanged: (val) {
                              setState(() {
                                bagType = val.toString();
                              });
                            },
                          ),
                          Text(
                            "Carton paper",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 350,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 4, 90, 88),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Add extra:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Add extra carton bags",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "3 bags for 1JD",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/bag.png",
                          scale: 15,
                        ),
                        isThreeLine: true,
                        value: extraCartonBags,
                        onChanged: (value) {
                          setState(() {
                            extraCartonBags = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Add extra vegetable wash",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "2 JD",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/spray.png",
                          scale: 15,
                        ),
                        isThreeLine: true,
                        value: extraVegetableWash,
                        onChanged: (value) {
                          setState(() {
                            extraVegetableWash = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
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
                              return Cart();
                            }),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Color.fromARGB(255, 4, 90, 88),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
