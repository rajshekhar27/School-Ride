import 'dart:async';

import 'package:flutter/material.dart';

import 'PrincipalLoginScreen.dart';

class MLoginScreen extends StatefulWidget {
  const MLoginScreen({super.key});

  @override
  State<MLoginScreen> createState() => _MLoginScreenState();
}

class _MLoginScreenState extends State<MLoginScreen> {
  //for animation
  bool _isAnimate=false;

  //setting state of animation
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 400),(){
      setState(() {
        _isAnimate=true;
      });
    });
  }

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
            AnimatedPositioned(
                top: mq.height*0.07,
                right: _isAnimate? mq.width*0.35:-mq.width*0.9,
                width: mq.width * 0.3,
                duration: Duration(seconds: 2),
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PrincipalLoginScreen()));
                          }, child: Text("Principal",style: TextStyle(fontSize: 18,color: Colors.black),),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade100,
                          ),),
                          ElevatedButton(onPressed: (){}, child: Text("Parents",style: TextStyle(fontSize: 18,color: Colors.black)),style: ElevatedButton.styleFrom(
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
                          ElevatedButton(onPressed: (){}, child: Text("Driver",style: TextStyle(fontSize: 18,color: Colors.black)),
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
                right: mq.width*0.13,
                bottom: mq.height*0.2,
                child: Text("Need Help?",style: TextStyle(color: Colors.blue.shade500),)),
          ],
        ),
      ),
    ));
  }
}
