import 'dart:ffi';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestify/Pages/Home%20Pages/bottomBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  // controller to keep track of which page we're on
  PageController _controller = new PageController();

  // keep track of if we are on last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 4);
              });
            },
            children: [
              Container(
                child: Scaffold(
                  backgroundColor: Color(0xF1F3F4),
                  body: SafeArea(
                    child: Container(
                      child: Column(
                        children: [
                          // TODO: Image Container
                          Container(
                            height: 260,
                            width: double.infinity,
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //     color: Colors.black,
                            //     width: 1,
                            //   ),
                            // ),
                            child: Image.asset(
                              './assets/images/Onboarding/UserType/usertype.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 10),
                          // TODO: Text Container
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     color: Colors.black,
                              //     width: 1,
                              //   ),
                              // ),
                              child: Text(
                                "Choose your user type",
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Container(
                              height: 20,
                              width: double.infinity,
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     color: Colors.black,
                              //     width: 1,
                              //   ),
                              // ),
                              child: Text(
                                "Click on avatar to choose user",
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          // TODO: Type of user Container
                          Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //     color: Colors.red,
                            //     width: 2,
                            //   ),
                            // ),
                            height: 200,
                            width: double.infinity,
                            child: GridView.count(
                              crossAxisCount: 2,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity / 2,
                                    // decoration: BoxDecoration(
                                    //   border: Border.all(
                                    //     color: Colors.black,
                                    //     width: 1,
                                    //   ),
                                    // ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: double.infinity,
                                          // decoration: BoxDecoration(
                                          //   border: Border.all(
                                          //     color: Colors.blue,
                                          //     width: 1,
                                          //   ),
                                          // ),
                                          child: Image.asset(
                                            "./assets/images/Onboarding/UserType/landlord.jpg",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(3),
                                          height: 30,
                                          width: double.infinity,
                                          // decoration: BoxDecoration(
                                          //   border: Border.all(
                                          //     color: Colors.blue,
                                          //     width: 1,
                                          //   ),
                                          // ),
                                          child: Center(
                                            child: Text(
                                              "LandLord",
                                              style: GoogleFonts.aBeeZee(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // --------------------------

                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity / 2,
                                    // decoration: BoxDecoration(
                                    //   border: Border.all(
                                    //     color: Colors.black,
                                    //     width: 1,
                                    //   ),
                                    // ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: double.infinity,
                                          // decoration: BoxDecoration(
                                          //   border: Border.all(
                                          //     color: Colors.blue,
                                          //     width: 1,
                                          //   ),
                                          // ),
                                          child: Image.asset(
                                              "./assets/images/Onboarding/UserType/owner.jpg"),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(3),
                                          height: 30,
                                          width: double.infinity,
                                          // decoration: BoxDecoration(
                                          //   border: Border.all(
                                          //     color: Colors.blue,
                                          //     width: 1,
                                          //   ),
                                          // ),
                                          child: Center(
                                            child: Text(
                                              "Owner",
                                              style: GoogleFonts.aBeeZee(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // --------------------------
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //     color: Colors.green,
                            //     width: 1,
                            //   ),
                            // ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(95, 05, 95, 05),
                              height: 50,
                              width: double.infinity / 2,
                              color: Colors.white60,
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     color: Colors.black,
                              //     width: 1,
                              //   ),
                              // ),
                              child: Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: double.infinity,
                                        // decoration: BoxDecoration(
                                        //   border: Border.all(
                                        //     color: Colors.blue,
                                        //     width: 1,
                                        //   ),
                                        //   borderRadius:
                                        //       BorderRadius.circular(8),
                                        // ),
                                        child: Image.asset(
                                          "./assets/images/Onboarding/UserType/tenant.jpg",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(3),
                                        height: 30,
                                        width: double.infinity,
                                        // decoration: BoxDecoration(
                                        //   border: Border.all(
                                        //     color: Colors.blue,
                                        //     width: 1,
                                        //   ),
                                        // ),
                                        child: Center(
                                          child: Text(
                                            "Tenant",
                                            style: GoogleFonts.aBeeZee(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
          // Dot indicator
          Container(
            alignment: Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () => {
                    _controller.jumpToPage(3),
                  },
                  child: Text("Skip"),
                ),

                SmoothPageIndicator(controller: _controller, count: 4),

                // Next or Done
                onLastPage
                    ? GestureDetector(
                        onTap: () => {
                          Get.toNamed('/login'),
                        },
                        child: Text("Done "),
                      )
                    : GestureDetector(
                        onTap: () => {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          ),
                        },
                        child: Text("Next "),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
