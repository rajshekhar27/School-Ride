import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.green,
        child: Text("Mobile", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
      ),
    ));
  }
}
