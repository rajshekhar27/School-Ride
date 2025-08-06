import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Text("Desktop", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
      ),
    ));
  }
}
