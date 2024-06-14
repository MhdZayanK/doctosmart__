import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machinetest/screens/screen3.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 500,
              height: 250,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/swus.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ClipRRect(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.white12.withOpacity(0.0),
                  child: Center(
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/Layer_1-2.png')),
                  ),
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Login or Register to Book",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text('Your Appointments',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Email',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 16))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 69,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
                    hintText: 'Enter Your email',
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 16,
                    fontWeight: FontWeight.w400
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Password',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 16))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 69,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(9.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 352,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homescreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[800],
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                      // Border color and width
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'By creating or logging into an account you are agreeing',
              style: TextStyle(fontSize: 14),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 56,
                ),
                Text(
                  'with our',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'terms and conditon',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'and',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'privacy policy',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
