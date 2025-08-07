import 'package:flutter/material.dart';

class TLoginScreen extends StatelessWidget {
  const TLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Expanded(
        child: Container(
          color: Colors.blue,
          //child: Text("Tablet", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
        ),
      ),
    ));
  }
}