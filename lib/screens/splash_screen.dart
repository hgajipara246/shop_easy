import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_easy/screens/login_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  SplashscreenState createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  String? uid;
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogInPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            text: "SH",
            style: TextStyle(
              fontFamily: "Metropolis",
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Color(0xFFFFA500),
            ),
            children: [
              TextSpan(
                text: "op",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: Color(0xFFFFA500),
                ),
              ),
              TextSpan(
                text: " EASY",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Color(0xFFFFA500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
