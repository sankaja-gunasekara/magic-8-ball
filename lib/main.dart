import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue[300],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1; //0-4 + 1
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
