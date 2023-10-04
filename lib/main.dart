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
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber(){
    setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: [
            // Padding(padding: EdgeInsets.all(16.0)),
            Expanded(
              child: TextButton(
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                onPressed: (){
                  changeDiceNumber();
                  print('left button preseed');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                onPressed: (){
                  changeDiceNumber();
                  print('right button preseed');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}