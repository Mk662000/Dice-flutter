import 'package:flutter/material.dart';
import 'Dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.green[600],
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
  void randomDiceNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      randomDiceNumber();
                    });
                    print('left button got pressed');
                  },
                  child: (Image.asset('images/dice$leftDiceNumber.png')))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      randomDiceNumber();
                    });
                    print('right button got pressed');
                  },
                  child: (Image.asset('images/dice$rightDiceNumber.png')))),
        ],
      ),
    );
  }
}
