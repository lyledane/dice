import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  // DEMONSTRATION PURPOSES
  // another Demonstration Purposes
  // TESTING
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice Activity'),
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
  int leftSidedice = Random().nextInt(6) + 1;
  int rightSidedice = Random().nextInt(6) + 1;
  void testFunction() {
    leftSidedice = Random().nextInt(6) + 1;
    rightSidedice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    testFunction();
                  });
                },
                child: Image.asset('assets/dice$leftSidedice.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    testFunction();
                  });
                },
                child: Image.asset('assets/dice$rightSidedice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
