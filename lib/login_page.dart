import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text('Cuy Store',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Pacifico', fontSize: 30))),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            icon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            labelText: 'email:',
                            labelStyle: TextStyle(color: Colors.grey)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            icon: Icon(
                              Icons.key_sharp,
                              color: Colors.grey,
                            ),
                            labelText: 'password:',
                            labelStyle: TextStyle(color: Colors.grey)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('FORGOT PASSWORD?',
                              style: GoogleFonts.poppins(fontSize: 13)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 5, 10, 15),
                  child: Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 8,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(20)),
                          height: 30,
                          width: 130,
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                'SIGN IN',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        onPressed: () {},
                        mini: true,
                        child:
                            Image(image: AssetImage('assets/images/fb1.jpg')),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        onPressed: () {},
                        mini: true,
                        child: Image(
                            image: AssetImage('assets/images/twiter2.jpg')),
                      ),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DON'T HAVE AN ACCOUNT?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: Text(
                          ' SIGN UP',
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
