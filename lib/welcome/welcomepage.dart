
import 'package:biddabd/login/signinpage.dart';
import 'package:biddabd/welcome/welcomespage.dart';
import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Positioned(
                // group8584KXm (59:7654)
                child:
                Container(
                  width:  350,
                  height:  100,
                  child:
                  Stack(
                    children:  [
                      Positioned(
                        // maskgrouprGo (59:7655)
                        left:  80,
                        top:  40,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  270,
                            height:  56,
                            child:
                            Image.asset(
                              'Images/images/icon2.png',
                              width:  280.5,
                              height:  56,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // maskgroupjrP (59:7658)
                        left:  35,
                        top:  35,
                        child:
                        Align(
                          child:
                          SizedBox(
                            width:  61.6,
                            height:  58,
                            child:
                            Image.asset(
                              'Images/images/icon1.png',
                              width:  61.6,
                              height:  58,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height:70),
              Image.asset(
                "Images/images/log1.png",
                height: 250,
              ),
              const SizedBox(height:35),
              const Positioned(
                left: 52,
                top: 463,
                child: Text(
                  "Welcome to BiddaBD\ne-Learning",
                  key: Key(
                  "Welcome to BiddaBD e-Learning (5:17137)",
                  ),
                style: TextStyle(
                  color: Color(
                    0xff070808,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Uni Neue",
                  letterSpacing: 0.05,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height:30),
              const Positioned(
                left: 62,
                top: 556,
                child: Text(
                  "This is an online School that \nallows you to re discover",
                  key: Key(
                    "This is an online School that allows you to re discover (5:17138)",

                  ),
                  style: TextStyle(
                    color: Color(
                      0xff4f4e4e,

                    ),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Uni Neue",
                    letterSpacing: 0,

                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Container(
                // group8617jTN (59:6779)
                margin:  EdgeInsets.fromLTRB(175, 10, 50, 50),
                width:  double.infinity,
                height:  7,
                decoration:  BoxDecoration (
                  borderRadius:  BorderRadius.circular(30),
                ),
                child:
                Container(
                  // group7838GTJ (39:93)
                  width:  double.infinity,
                  height:  double.infinity,
                  decoration:  BoxDecoration (
                    borderRadius:  BorderRadius.circular(30),
                  ),
                  child:
                  Center(
                    child: Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      children:  [
                        Container(
                          // autogroupzclbd2x (6JigCw6cbuWrAxDdA1zCLB)
                          margin:  EdgeInsets.fromLTRB(0, 0, 9.04, 0),
                          width:  24,
                          height:  double.infinity,
                          child:
                          Stack(
                            children:  [
                              Positioned(
                                // rectangle83ZhJ (39:94)

                                top:  0,
                                child:
                                Align(
                                  child:
                                  SizedBox(
                                    width:  7,
                                    height:  7,
                                    child:
                                    Center(
                                      child: Container(
                                        decoration:  BoxDecoration (
                                          borderRadius:  BorderRadius.circular(30),
                                          color:  Color(0xff565656),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle85sxt (39:95)

                                top:  0,
                                child:
                                Align(
                                  child:
                                  SizedBox(
                                    width:  7,
                                    height:  7,
                                    child:
                                    Container(
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(30),
                                        color:  Color(0xff565656),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle82znc (39:97)
                                left:  0,
                                top:  0,
                                child:
                                Align(
                                  child:
                                  SizedBox(
                                    width:  24,
                                    height:  7,
                                    child:
                                    Container(
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(30),
                                        color:  Color(0xff565656),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // rectangle84888 (39:96)
                          width:  7,
                          height:  7,
                          decoration:  BoxDecoration (
                            borderRadius:  BorderRadius.circular(30),
                            color:  Color(0xff565656),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // autogroup9gouFCk (6Jifks1inGxBTjM1Ci9Gou)
                margin:  EdgeInsets.fromLTRB(10, 0, 20, 30),
                width:  double.infinity,
                height:  40,
                child:
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      margin:  EdgeInsets.fromLTRB(30, 0, 130, 0),
                      width:  97,
                      height:  double.infinity,
                      decoration:  BoxDecoration (
                        color:  Color(0xff2d368e),
                        borderRadius:  BorderRadius.circular(36),
                      ),
                      child: TextButton(
                        onPressed:  () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signinpage()),
                          );
                        },
                        style:  TextButton.styleFrom (
                          padding:  EdgeInsets.zero,
                        ),
                        child:
                        const Center(
                          child:
                          Text(
                            'Skip',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontFamily: "Uni Neue",
                              fontSize:  18,
                              fontWeight:  FontWeight.w500,
                              height:  1.2575,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),

                    TextButton(
                      // frame382cp (11:18355)
                      onPressed:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => welcomespage()),
                        );
                      },
                      style:  TextButton.styleFrom (
                        padding:  EdgeInsets.zero,
                      ),
                      child:
                      Container(
                        width:  97,
                        height:  double.infinity,
                        decoration:  BoxDecoration (
                          color:  Color(0xff2d368e),
                          borderRadius:  BorderRadius.circular(36),
                        ),
                        child:
                        const Center(
                          child:
                          Text(
                            'Next',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontFamily: "Uni Neue",
                              fontSize:  18,
                              fontWeight:  FontWeight.w500,
                              height:  1.2575,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
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
