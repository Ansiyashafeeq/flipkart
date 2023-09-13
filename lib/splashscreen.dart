import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flipkart/bottomnavigation.dart';

class SplashFlip extends StatefulWidget {
  const SplashFlip({Key? key}) : super(key: key);

  @override
  State<SplashFlip> createState() => _SplashFlipState();
}

class _SplashFlipState extends State<SplashFlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
          child: SizedBox(
              height: 90,
              width: 80,
              child: Image(
                image: AssetImage('assets/ekart.png'),
              ))),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Navigation()));
    });
  }
}