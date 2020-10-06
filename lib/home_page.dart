import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image(
                      image: AssetImage(
                          'assets/images/dice-png-$leftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image(
                      image: AssetImage(
                          'assets/images/dice-png-$rightDiceNumber.png'),
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              onPressed: roll,
              child: Text('Roll'),
              disabledColor: Colors.green,
              hoverElevation: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
