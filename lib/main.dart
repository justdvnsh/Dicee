import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }

}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 5;
  int rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDiceNumber = 1;
                  });
                  print("Left button poresssed");
                },
                child: Text(
                  '$leftDiceNumber',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 200.0
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDiceNumber = 2;
                  });
                  print('Right button oressed');
                },
                child: Text(
                  '$rightDiceNumber',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 200.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

