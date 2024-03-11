// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: "Myfont",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Container(
                  width: 300,
                  height: 300,
                  child: SvgPicture.asset(
                    "assets/icons/chat.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple[500],
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.purple[500]!),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, color: Colors.purple[500]),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: 111,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 111,
            ),
          ),
        ],
      ),
    );
  }
}
