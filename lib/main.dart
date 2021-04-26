import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
  void testFunction() {
  @override
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
