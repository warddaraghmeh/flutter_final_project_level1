// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 33,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 33, fontFamily: "Myfont"),
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      width: 300,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 150, 220),
                            borderRadius: BorderRadius.circular(66)),
                        width: 266,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email:",
                              hintStyle: TextStyle(fontSize: 19),
                              prefixIcon: Icon(Icons.email)),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 150, 220),
                            borderRadius: BorderRadius.circular(66)),
                        width: 266,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "password",
                              hintStyle: TextStyle(fontSize: 19),
                              prefixIcon: Icon(Icons.lock_clock_rounded)),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 180, 61, 73)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 106, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(218, 251, 252, 252),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  child: Image.asset(
                "assets/images/main_top.png",
                width: 111,
              )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/login_bottom.png",
                    width: 111,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
