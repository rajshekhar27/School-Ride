import 'dart:async';

import 'package:flutter/material.dart';

import 'MLoginScreen.dart';

class MSplashScreen extends StatefulWidget {
  const MSplashScreen({super.key});

  @override
  State<MSplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<MSplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return MLoginScreen();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Center(child: Image.asset("assets/images/busLogo.png")),
      ),
    );
  }
}
