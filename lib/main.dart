import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset(
          'images/ball$ballNumber.png',
        ),
        onPressed: () {
          ballNumber = Random().nextInt(5)+1;
          print('New ball number is $ballNumber');
        },
      ),
    );
  }
}
