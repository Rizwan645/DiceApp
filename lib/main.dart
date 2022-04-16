import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return dice();
  }
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int lc = Random().nextInt(6)+1;
  int rc = Random().nextInt(6)+1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blue.shade100,
              title:const Center(
                child: Text(
                  'Dice',
                  style: TextStyle(
                    color: Colors.black,
                      fontSize: 30,
                      fontStyle:  FontStyle.italic,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
          backgroundColor: Colors.lightBlueAccent,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                            height: 200,
                            width: 150,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                   lc = Random().nextInt(6)+1;
                                   rc = Random().nextInt(6)+1;
                                });;
                              },

                                child: Image(image: AssetImage('image/dice$lc.png'),))
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                            height: 200,
                            width: 150,
                            child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                     lc = Random().nextInt(6)+1;
                                     rc = Random().nextInt(6)+1;
                                  });
                                },
                                child: Image(image: AssetImage("image/dice$rc.png"),))
                        ),
                      ],
                    ),
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

