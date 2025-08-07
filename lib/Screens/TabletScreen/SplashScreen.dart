import 'dart:async';
import 'package:flutter/material.dart';

import 'TLoginScreen.dart';

class TSplashScreen extends StatefulWidget {
  const TSplashScreen({super.key});

  @override
  State<TSplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<TSplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return TLoginScreen();
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
