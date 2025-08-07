import 'package:flutter/material.dart';
import 'package:schoolride/Responsive_Layout/Responsive_Layout.dart';
import 'package:schoolride/Screens/MobileScreen/SplashScreen.dart';
import 'Screens/TabletScreen/TLoginScreen.dart';


void main() {
  runApp(const SchoolRide());
}

class SchoolRide extends StatelessWidget {
  const SchoolRide({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyKid's Bus",
        theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.orange.shade400,
            elevation: 2,
            titleTextStyle: TextStyle(color: Colors.black,fontSize: 19, fontWeight: FontWeight.normal),
          ),
        ),
      home:ResponsiveLayout(mobile: MSplashScreen(), tablet: TLoginScreen())
    );
  }
}
