import 'dart:async';

import 'package:flutter/material.dart';

class ParentsLoginScreen extends StatefulWidget {
  const ParentsLoginScreen({super.key});

  @override
  State<ParentsLoginScreen> createState() => _ParentsLoginScreenState();
}

class _ParentsLoginScreenState extends State<ParentsLoginScreen> {
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Welcome to our School")),
        ),
        body: Stack(
          children: [
            //making animation
            AnimatedPositioned(
                top: mq.height*0.07,
                right: _isAnimate? mq.width*0.35:-mq.width*0.5,
                width: mq.width * 0.3,
                duration: Duration(milliseconds: 1500 ),
                child: Image.asset("assets/images/parents.png", )),

            //Parents Choice box
            Positioned(
              bottom: mq.height*0.20,
              left: mq.width*0.1,
              width: mq.width * 0.8,
              height: mq.height*0.45,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Admin text inside box
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
                              "Paretns:",
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

                    //Principal text form
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: double.infinity, // take full width
                        child: TextFormField(

                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "User id",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //password
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: double.infinity, // take full width
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText: "Password",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //login button
                    Center(
                      child: SizedBox(
                        width: mq.width*0.4,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange.shade100
                            ),
                            onPressed: (){}, child: Text("Login", style: TextStyle(color: Colors.black),)),
                      ),
                    ),

                    //forget button and help
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text("Forget Possword")),
                        SizedBox(
                          width: mq.width*0.15,
                        ),
                        TextButton(onPressed: (){}, child: Text("Need Help?")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
