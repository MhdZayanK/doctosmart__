import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:machinetest/screens/screen2.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/swus.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
        child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
    child: Container(
    color: Colors.white12.withOpacity(0.0),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Your splash screen content
               Container(
                   height: 150,
                   width: 150,
                   child: Image.asset('assets/Layer_1-2.png')),
                SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    )));
  }
}
