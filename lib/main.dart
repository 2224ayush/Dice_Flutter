import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.black26,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice= 1;
  int rightDice=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child:TextButton(
                onPressed: (){
                  setState(() {
                    leftDice=Random().nextInt(6)+1;
                    print("left dice = $leftDice");
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$leftDice.png"),
                ),
              )),
          const SizedBox(width: 20,
          child: Divider(
            color: Colors.white,
          )),
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    rightDice=Random().nextInt(6)+1;
                    print("right dice = $rightDice");
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$rightDice.png"),
                ),
              ))
        ],
      ),
    );
  }
}

