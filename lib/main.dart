import 'package:flutter/material.dart';
import 'package:schoolride/Responsive_Layout/Responsive_Layout.dart';
import 'package:schoolride/Screens/DesktopScreen.dart';
import 'package:schoolride/Screens/MobileScreen.dart';
import 'package:schoolride/Screens/TabletScreen.dart';


void main() {
  runApp(const SchoolRide());
}

class SchoolRide extends StatelessWidget {
  const SchoolRide({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: "MyKid's Bus",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:ResponsiveLayout(desktop: DesktopScreen(), mobile: MobileScreen(), tablet: TabletScreen())
    );
  }
}
