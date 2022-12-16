import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Widgets...
import 'package:nestify/Widgets/searchBox.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TODO: Image Box
            Container(
              height: 230,
              width: double.infinity,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //       // color: Colors.black,
              //       // width: 1.0,
              //       ),
              // ),
              child: Stack(
                children: [
                  Positioned(
                    // TODO: Image Box Container
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      // decoration: BoxDecoration(
                      //   border: Border.all(width: 3, color: Colors.redAccent),
                      // ),

                      child: Image.asset(
                        '',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    // TODO: Search Box Container
                    child: Container(
                      margin: EdgeInsets.all(0),
                      height: double.infinity,
                      width: double.infinity,
                      // decoration: BoxDecoration(
                      //     // border: Border.all(width: 1.5, color: Colors.red),
                      //     ),
                      // TODO: Search Box
                      child: Center(
                        // TODO: Search Box Widget
                        child: SearchBox(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 175,
              width: double.infinity,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //   ),
              // ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 110),
                      height: 30.0,
                      width: double.infinity,
                      // decoration: BoxDecoration(
                      //   color: Colors.white,
                      //   // border: Border.all(
                      //   //   width: 1.0,
                      //   //   color: Colors.red,
                      //   // ),
                      // ),
                      child: Text(
                        "Our services",
                        style: GoogleFonts.mina(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          // color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //TODO: Services Boxes...
                  Container(
                    height: 140.0,
                    width: double.infinity,
                    // decoration: BoxDecoration(
                    //   color: Colors.green,
                    //   border: Border.all(
                    //     width: 3.0,
                    //     color: Colors.green,
                    //   ),
                    // ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Positioned(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.all(7),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   width: 1.0,
                                          //   color: Colors.blueAccent,
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 20,
                                            )
                                          ]),
                                      child: Image.asset(
                                        './assets/images/',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // height: 20,
                                      // width: 10,
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(
                                      //     width: 1.0,
                                      //     color: Colors.blueAccent,
                                      //   ),
                                      // ),
                                      child: Text(
                                        "Furniture",
                                        style: GoogleFonts.mina(
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              // TODO: Service 2
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.all(7),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   width: 1.0,
                                          //   color: Colors.blueAccent,
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 20,
                                            )
                                          ]),
                                      child: Image.asset(
                                        './assets/images/',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // height: 20,
                                      // width: 10,
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(
                                      //     width: 1.0,
                                      //     color: Colors.blueAccent,
                                      //   ),
                                      // ),
                                      child: Text(
                                        "Flat/House",
                                        style: GoogleFonts.mina(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // TODO: Service 3
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.all(7),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   width: 1.0,
                                          //   color: Colors.blueAccent,
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 20,
                                            )
                                          ]),
                                      child: Image.asset(
                                        './assets/images/',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // height: 20,
                                      // width: 10,
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(
                                      //     width: 1.0,
                                      //     color: Colors.blueAccent,
                                      //   ),
                                      // ),
                                      child: Text(
                                        "Find Roomie",
                                        style: GoogleFonts.mina(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // TODO: Service 4
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.all(7),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   width: 1.0,
                                          //   color: Colors.blueAccent,
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 20,
                                            )
                                          ]),
                                      child: Image.asset(
                                        './assets/images/',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // height: 20,
                                      // width: 10,
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(
                                      //     width: 1.0,
                                      //     color: Colors.blueAccent,
                                      //   ),
                                      // ),
                                      child: Text(
                                        "Communities",
                                        style: GoogleFonts.mina(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
