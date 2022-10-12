import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue,
      ),
      body: magicPage(),
    ),
  ));
}

class magicPage extends StatefulWidget {
  const magicPage({Key? key}) : super(key: key);

  @override
  State<magicPage> createState() => _magicPageState();
}

class _magicPageState extends State<magicPage> {
  int ballNumber = 1;

  void changeBallState() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                changeBallState();
              },
            ),
          ),
        ],
      ),
    );
  }
}
