import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inputWidget.dart';

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.3),
        ),
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:40.0, bottom: 10),
                  child: Text(
                    "Email",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff999a9a)
                        ),),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    InputWidget(30.0, 0.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text
                              ("Enter your email id to continue...",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color(0xFFA0A0A0), 
                                fontSize: 12
                              ),                    
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                gradient: LinearGradient(
                                    colors: signInGradients,
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                              ),
                              child: ImageIcon(
                                AssetImage(
                                  "assets/ic_forward.png",
                                  ),
                                  size: 40,
                                  color: Colors.white
                              ),
                          ),   
                        ],
                      ),
                    ),               
                   
                  ],
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            roundedRectButton(
              "Let's get Started", 
              signInGradients, 
              false),
              roundedRectButton(
              "Create an Account", 
              signUpGradients,
              false),

          ],
        )
      ],
      
    );
  }
}

Widget roundedRectButton(
  String title, List<Color> gradient, bool isEndIconVisible){
    return Builder(
        builder: (BuildContext mContext){
          return Padding
          (padding: EdgeInsets.only(bottom: 10),
          child: Stack(
            alignment: Alignment(1.0, 0.0),
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(mContext).size.width / 1.7,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  gradient: LinearGradient(
                    colors: gradient,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),                  
                ),
                padding: EdgeInsets.only(top: 16, bottom: 16),
              ),
              Visibility(
                visible: isEndIconVisible,
                child: Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: ImageIcon(
                    AssetImage("assets/ic_forward.png"),
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )

            ],
          ),

          );
        },
    );
}