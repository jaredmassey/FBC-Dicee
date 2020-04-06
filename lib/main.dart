import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var dieValues = [1, 1];
  var rng = new Random();

  void roll() {
    this.dieValues[0] = rng.nextInt(6) + 1;
    this.dieValues[1] = rng.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice${this.dieValues[0]}.png'),
              onPressed: () {
                setState(this.roll);
                print('Val: ${this.dieValues[0]}');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice${this.dieValues[1]}.png'),
              onPressed: () {
                setState(this.roll);
                print('Val: ${this.dieValues[1]}');
              },
            ),
          ),
        ],
      ),
    );
  }
}
