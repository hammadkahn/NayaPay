import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: 150,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: 50,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Icon(Icons.menu_open),
                            ),
                            Text(
                              "Nayapay",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              child: Icon(Icons.account_tree_sharp),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: Icon(Icons.ac_unit),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: 20,
              top: 60,
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          
                          primary: Colors.green, // foreground
                        ),
                        onPressed: () {},
                        child: Text('Add Money'),
                      )
                    ],
                  ),
                ),
                height: 180,
                width: size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
              ))
        ]),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50,
            child: Row(children: <Widget>[
              Icon(Icons.home),
              Icon(Icons.chat),
              Icon(Icons.credit_card),
              Icon(Icons.payments_outlined)
            ]),
          ),
          color: Colors.orange,
        ));
  }
}
