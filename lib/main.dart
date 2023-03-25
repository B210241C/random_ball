import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BallPage ());

}
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.redAccent,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
        setState(() {
          RandomNum();
        });
      },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }

  void RandomNum(){
    ballNumber =Random().nextInt(5)+1;
  }
}



