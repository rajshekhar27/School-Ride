import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  Widget mobile;
  Widget tablet;
  Widget desktop;

  ResponsiveLayout({required this.desktop,required this.mobile, required this.tablet}) : super();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth<500)
        {
          return mobile;
        }else if(constraints.maxWidth<1100){
        return tablet;
      }else{
        return desktop;
      }
    });
  }
}
