import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login.page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 182, 255, 11),
                  Color.fromARGB(255, 224, 248, 8),
                ],
              ),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/inicial.png",
                      height: 200.0,
                      width: 200.0,
                    ),
                    Container(
                        height: 100,
                        child: Text(
                            "Bem-vindo/a ao Controle de Satisfação do Cliente!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 2, 1, 0),
                              fontFamily: 'Schyler',
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ))),
                  ],
                ),
                CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation(Color.fromARGB(255, 20, 20, 4)),
                  strokeWidth: 9.0,
                ),
              ],
            )));
  }
}
