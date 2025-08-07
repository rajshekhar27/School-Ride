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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/busLogo.png")),
            Center(child: Text("Let's Track",style: TextStyle(fontSize: 30,color: Colors.black),),),
            Center(child: Text("Our Bus...",style: TextStyle(fontSize: 25,color: Colors.black),),),
          ],
        ),
      ),
    );
  }
}
