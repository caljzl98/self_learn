import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      AppPage(),
    );

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 35.0,
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
