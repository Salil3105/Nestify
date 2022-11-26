import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   color: Color.fromARGB(216, 238, 235, 235),
        // ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2.0,
                      // ),
                      ),
                  child: Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(0.0),
                      alignment: Alignment.center,
                      child: Lottie.network(
                        // "https://assets3.lottiefiles.com/packages/lf20_ejcl9ml7.json",
                        "https://assets3.lottiefiles.com/packages/lf20_zjRltW.json",
                        animate: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(1.0),
                      height: 45.0,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   border: Border.all(
                      //       color: const Color.fromARGB(255, 235, 196, 105),
                      //       width: 2.0),
                      // ),
                      child: Center(
                        child: Text(
                          "Welcome to Nestify",
                          style: GoogleFonts.mina(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),

                    // ---------------------------------------------------------------------
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // border: Border.all(
                        //   color: const Color.fromARGB(255, 235, 196, 105),
                        //   width: 2.0,
                        // ),
                      ),
                      
                      child: Center(
                        child: Text(
                          "Find your Flat Or Roomies 🏡",
                          style: GoogleFonts.mina(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 87, 84, 84),
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                    ),

                    // Inputs
                    // Inputs(label: 'Email Id', obscureText: false),
                    // Inputs(label: 'Password ', obscureText: true),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 3),
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 72, 187, 240),
                            width: 0.1,
                          ),
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Email Id",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 3),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 72, 187, 240),
                          width: 0.1,
                        ),
                      ),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: InputBorder.none,
                          hintText: "Password ",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.0),

                    MaterialButton(
                      onPressed: () {
                        Get.toNamed('/bottom-nav-bar');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50.0,
                      minWidth: 310.0,
                      splashColor: Color.fromARGB(255, 110, 186, 221),
                      color: Color.fromARGB(255, 69, 131, 211),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 20.0),

                    // Forgot Password Link
                    Container(
                      height: 50.0,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Get.toNamed('/forgot-screen');
                          },
                          child: Text(
                            "Forgot password ?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 69, 131, 211),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              "Don't have an account ?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 69, 131, 211),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed('/signup');
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                " Register !",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 107, 99, 95),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
