import 'dart:async';

import 'package:flutter/material.dart';
import 'package:schoolride/Screens/MobileScreen/DriverScreen/DriverLoginScreen.dart';
import 'package:schoolride/Screens/MobileScreen/ParentsScreens/ParentsLoginScreen.dart';

import 'PrincipalScreens/PrincipalLoginScreen.dart';

class MLoginScreen extends StatefulWidget {
  const MLoginScreen({super.key});

  @override
  State<MLoginScreen> createState() => _MLoginScreenState();
}

class _MLoginScreenState extends State<MLoginScreen> {

  bool needHelp=false;

  @override
  Widget build(BuildContext context) {

    //taking the screen size of current screen
    var mq=MediaQuery.of(context).size;

    return SafeArea(child: Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Welcome to our School")),
        ),
        body: Stack(
          children: [
            //making animation
            Positioned(
                top: mq.height*0.07,
                right: mq.width*0.35,
                width: mq.width * 0.3,
                child: Image.asset("assets/images/busSplash.png", )),

            //Login Choice box
            Positioned(
              bottom: mq.height*0.25,
              left: mq.width*0.1,
              width: mq.width * 0.8,
              height: mq.height*0.35,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 5)
                  ),]
                ),

                child: Column(
                  children: [
                    //Login text inside box
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                          Container(
                            height: mq.height * 0.07,
                            width: mq.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                              color: Colors.orange.shade200,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text(
                                "Login As:",
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                      ],
                    ),

                    //for spacing
                    SizedBox(
                      height: mq.height*0.02,
                    ),

                    //Principal button and Parents
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PrincipalLoginScreen()));
                          }, child: Text("Principal",style: TextStyle(fontSize: 18,color: Colors.black),),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade100,
                          ),),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentsLoginScreen()));
                          }, child: Text("Parents",style: TextStyle(fontSize: 18,color: Colors.black)),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade100,
                          ),),
                        ],
                      ),
                    ),

                    //Driver button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverLoginScreen()));
                          }, child: Text("Driver",style: TextStyle(fontSize: 18,color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade100,
                          ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              right: mq.width * 0.10,
              bottom: mq.height * 0.18,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    needHelp = !needHelp; // toggle the flag
                  });
                },
                child: Text("Need Help?"),
              ),
            ),
            
            // Show black box if needHelp is true
            if (needHelp)
              Positioned(
                right: mq.width * 0.10,
                bottom: mq.height * 0.20,
                child: Container(
                  height: mq.height*0.6,
                  width: mq.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0,5),
                    )]
                  ),
                  child: Stack(
                    children: [
                     Positioned(
                        right: mq.width * 0.03,
                        top: mq.height*0.02,
                        child: GestureDetector(
                            onTap: (){
                              setState(() {
                                needHelp=false;
                              });
                            },
                            child: Icon(Icons.cancel_outlined)),

                      ),
                      Positioned(
                          top: mq.height*0.08,
                          left: mq.width * 0.05, // so it doesn't stick to the left edge
                          right: mq.width * 0.03, // limits width
                          child: Container(
                            height: mq.height*0.1,
                              decoration: BoxDecoration(
                                  color: Colors.orange.shade50,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0,5),
                                  )]
                              ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("If you are Principal then click on Principal button for login as principal", style: TextStyle(fontWeight: FontWeight.bold),softWrap: true,),
                              )))),
                      Positioned(
                          top: mq.height*0.22,
                          left: mq.width * 0.05, // so it doesn't stick to the left edge
                          right: mq.width * 0.03, // limits width
                          child: Container(
                            height: mq.height*0.1,
                              decoration: BoxDecoration(
                                  color: Colors.orange.shade50,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0,5),
                                  )]
                              ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("If you are Parent then click on Parent button for login as principal", style: TextStyle(fontWeight: FontWeight.bold),softWrap: true,),
                              )))),
                      Positioned(
                          top: mq.height*0.36,
                          left: mq.width * 0.05, // so it doesn't stick to the left edge
                          right: mq.width * 0.03, // limits width
                          child: Container(
                            height: mq.height*0.1,
                              decoration: BoxDecoration(
                                  color: Colors.orange.shade50,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0,5),
                                  )]
                              ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("If you are Driver then click on Driver button for login as Driver", style: TextStyle(fontWeight: FontWeight.bold),softWrap: true,),
                              )))),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    ));
  }
}
