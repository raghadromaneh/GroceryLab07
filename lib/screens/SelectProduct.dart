import 'package:flutter/material.dart';
import 'package:part1/screens/CompleteOrder.dart';
import 'package:part1/screens/cart.dart';

class SelectProduct extends StatefulWidget {
  SelectProduct({Key? key}) : super(key: key);

  @override
  State<SelectProduct> createState() => _SelectProductState();
}

String vegetable = "";

class _SelectProductState extends State<SelectProduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 197, 244, 220),
          body: Container(
            padding: EdgeInsets.all(20),
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
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Choose item:",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      RadioListTile(
                        activeColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Carrot",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/carrot.png",
                          scale: 14,
                        ),
                        value: "carrot",
                        groupValue: vegetable,
                        onChanged: (val) {
                          setState(() {
                            vegetable = val.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Cucumber",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/cucumber.png",
                          scale: 14,
                        ),
                        value: "cucumber",
                        groupValue: vegetable,
                        onChanged: (val) {
                          setState(() {
                            vegetable = val.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Tomato",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/tomato.png",
                          scale: 14,
                        ),
                        value: "tomato",
                        groupValue: vegetable,
                        onChanged: (val) {
                          setState(() {
                            vegetable = val.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Onion",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/onion.png",
                          scale: 14,
                        ),
                        value: "onion",
                        groupValue: vegetable,
                        onChanged: (val) {
                          setState(() {
                            vegetable = val.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Mint",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/mint.png",
                          scale: 14,
                        ),
                        value: "mint",
                        groupValue: vegetable,
                        onChanged: (val) {
                          setState(() {
                            vegetable = val.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Color.fromARGB(255, 4, 90, 88),
                        title: Text(
                          "Lettuce",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondary: Image.asset(
                          "images/lettuce.png",
                          scale: 14,
                        ),
                        value: "lettuce",
                        groupValue: vegetable,
                        onChanged: (val) {
                          setState(() {
                            vegetable = val.toString();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                              return CompleteOrder();
                            }),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Next",
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
      ),
    );
  }
}

// class Vegetable extends StatelessWidget {
//   Vegetable(
//       {this.ItemName, this.imageName, this.ValueName, required this.SetState});
//   String vegetable = "";
//   String? ItemName;
//   String? imageName;
//   String? ValueName;
//   Function() SetState;
//   @override
//   Widget build(BuildContext context) {
//     return RadioListTile(
//       title: Text(
//         "$ItemName",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),
//       subtitle: Text(
//         "Vegetable",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       secondary: Image.asset(
//         "images/$imageName.png",
//         scale: 14,
//       ),
//       value: ValueName,
//       groupValue: vegetable,
//       onChanged: (val) {
//         // setState(() {
//         //                      vegetable = val.toString();
//         //                   });
//       },
//     );
//   }
// }

// class Vegetable extends StatefulWidget {
//   @override
//   State<Vegetable> createState() => _VegetableState();
// }

// class _VegetableState extends State<Vegetable> {
//   _VegetableState({this.ItemName, this.imageName, this.ValueName});
//   String vegetable = "";
//   String? ItemName;
//   String? imageName;
//   String? ValueName;
//   @override
//   Widget build(BuildContext context) {
//     return RadioListTile(
//       title: Text(
//         ItemName!,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),
//       subtitle: Text(
//         "Vegetable",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       secondary: Image.asset(
//         "images/$imageName.png",
//         scale: 14,
//       ),
//       value: ValueName,
//       groupValue: vegetable,
//       onChanged: (val) {
//         setState(() {
//           vegetable = val.toString();
//         });
//       },
//     );
//   }
// }
