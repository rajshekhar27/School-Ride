import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.blue,
        child: Text("Tablet", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
      ),
    ));
  }
}
