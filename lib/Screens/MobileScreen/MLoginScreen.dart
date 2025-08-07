import 'package:flutter/material.dart';

class MLoginScreen extends StatefulWidget {
  const MLoginScreen({super.key});

  @override
  State<MLoginScreen> createState() => _MLoginScreenState();
}

class _MLoginScreenState extends State<MLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Welcome to our School")),
        ),
        body: Stack(
          children: [

          ],
        ),
      ),
    ));
  }
}
