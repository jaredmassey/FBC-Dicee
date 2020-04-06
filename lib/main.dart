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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          DiceButton(),
          DiceButton(),
        ],
      ),
    );
  }
}

class DiceButton extends StatefulWidget {
  @override
  _DiceButtonState createState() => _DiceButtonState();
}

class _DiceButtonState extends State<DiceButton> {
  var rng = new Random();
  int dieValue = 1;

  void roll() {
    this.dieValue = ((this.rng.nextInt(1000)) % 6) + 1;
  }

  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('images/dice${this.dieValue}.png'),
        onPressed: () {
          setState(this.roll);
          print('DV: ${this.dieValue}');
        },
      ),
    );
  }
}
