
import 'package:biddabd/login/common_appbar_view.dart';
import 'package:biddabd/login/common_button.dart';
import 'package:biddabd/login/common_text_field_view_one.dart';
import 'package:biddabd/login/common_text_field_view_three.dart';
import 'package:biddabd/login/common_text_field_view_two.dart';
import 'package:biddabd/login/signinpage.dart';
import 'package:biddabd/login/validator.dart';
import 'package:flutter/material.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
 // State<signuppage> createState() => _signuppageState();
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  String _errorEmail = '';
  TextEditingController _emailController = TextEditingController();
  String _errorPassword = '';
  TextEditingController _passwordController = TextEditingController();
  String _matchPassword = '';
  TextEditingController _passwordMatch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child:
        Container(
          color:  Color(0xffffffff),
          child: Column(
            children: [
              Container(
                width:  double.infinity,
                height:  280,
                decoration:  const BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Stack(
                  children:  [
                    Positioned(
                      // groupLto (66:800)
                      left:  -130,
                      top:  -320,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  650,
                          height:  600,
                          child:
                          Image.asset(
                            'Images/images/signin1.png',
                            //color: const Color(0xffbfccd6),
                            width:  380,
                            height:  400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse213Cxw (62:7689)
                      left:  90,
                      top:  -80,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  220,
                          height:  350,
                          child:
                          Image.asset(
                            'Images/images/signin2.png',
                            width:  620,
                            height:  420,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // groupLto (66:800)
                      left:  -8,
                      top:  230,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  50,
                          height:  50,
                          child:
                          Image.asset(
                            'Images/images/signin3.png',
                            //color: const Color(0xffbfccd6),
                            width:  50,
                            height:  50,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(120, 205, 0, 0),
                      // autogroupxpk5rXq (Dn45sTBk9ST4FWAsQjxPK5)
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // registerQZM (65:160)
                            //margin:  EdgeInsets.fromLTRB(130, 200, 0, 5),
                            child:
                            const Text(
                              'Register',
                              style:  TextStyle (
                                fontFamily: 'Roboto',
                                fontSize:  36,
                                fontWeight:  FontWeight.w600,
                                height:  1.1725,
                                letterSpacing:  1.08,
                                color:  Color(0xffbc202e),
                              ),
                            ),
                          ),
                          const Text(
                            // createyouraccountT1q (65:161)
                            'Create your account',
                            style:  TextStyle (
                              fontFamily: 'Roboto',
                              fontSize:  16,
                              fontWeight:  FontWeight.w400,
                              height:  1.1725,
                              letterSpacing:  0.48,
                              color:  Color(0xff035ea6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  CommonTextFieldViewOne(
                    controller: _emailController,
                    errorText: _errorEmail,
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, bottom: 16),
                    hintText:
                    "Email Address",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String txt) {
                    },
                  ),
                  CommonTextFieldViewTwo(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, bottom: 24),
                    hintText:
                    'Password',
                    isObscureText: true,
                    onChanged: (String txt) {},
                    errorText: _errorPassword,
                    controller: _passwordController,
                  ),
                  CommonTextFieldViewThree(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, bottom: 24),
                    hintText:
                    'Confirm Password',
                    isObscureText: true,
                    onChanged: (String txt) {},
                    errorText: _errorPassword,
                    controller: _passwordController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 24,
                  )
                ],
              ),
              Container(
            // landing4RV (59:6780)
            width:  double.infinity,
            height:  100,
            decoration:  const BoxDecoration (
              color:  Color(0xffffffff),
            ),
            child: Stack(
              children: [
                const Positioned(
                  // byregisteringyouareagreeingtoo (65:154)
                  right: 55,
                  top:  0,
                  child:
                  Align(
                    child:
                    SizedBox(
                      width:  310,
                      height:  33,
                      child:
                      Text(
                        'By registering, you are agreeing to our terms of use and privacy policy.',
                        style:  TextStyle (
                          fontFamily: 'Roboto',
                          fontSize:  14,
                          fontWeight:  FontWeight.w400,
                          height:  1.1725,
                          letterSpacing:  0.42,
                          color:  Color(0xff2d368e),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // groupao9 (67:1553)
                  left:  310,
                  top:  8,
                  child:
                  Align(
                    child:
                    SizedBox(
                      width:  122.51,
                      height:  108.14,
                      child:
                      Image.asset(
                        'Images/images/signin7.png',
                        width:  122.51,
                        height:  108.14,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
              SizedBox(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        // autogroupdvrjpgF (Dn46cM7wHmHcp7zPqxdvrj)
                        margin:  EdgeInsets.fromLTRB(16, 0, 0, 0),
                        width:  double.infinity,
                        height:  62,
                        child:
                        Stack(
                          children:  [
                            CommonButton(
                                buttonTextWidget: TextButton(
                                  onPressed: (){
                                    if (_allValidation()) {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(

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
                                            Container(
                                              padding:  EdgeInsets.fromLTRB(40, 10, 47, 0),
                                              width:  350,
                                              height:  254,
                                              decoration:  BoxDecoration (
                                                color:  Color(0xffffffff),
                                                boxShadow:  [
                                                  BoxShadow(
                                                    color:  Color(0x26000000),
                                                    offset:  Offset(0, 0),
                                                    blurRadius:  2,
                                                  ),
                                                ],
                                              ),
                                              child:
                                              Column(
                                                crossAxisAlignment:  CrossAxisAlignment.center,
                                                children:  [
                                                  Container(
                                                    // frameFgT (69:2024)
                                                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    width:  115,
                                                    height:  90,
                                                    child:
                                                    Image.asset(
                                                      "Images/images/frame-KBy.png",
                                                      width:  116.04,
                                                      height:  91.9,
                                                    ),
                                                  ),
                                                  Container(
                                                    // congratulationsZx3 (69:2022)
                                                    margin:  EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                    child:
                                                    Text(
                                                      'Congratulations',
                                                      style:  TextStyle (
                                                        fontFamily: 'Roboto',
                                                        fontSize:  25,
                                                        fontWeight:  FontWeight.w600,
                                                        height:  1.1725,
                                                        letterSpacing:  0.84,
                                                        color:  Color(0xffbc202e),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // congratulationsZx3 (69:2022)
                                                    child:
                                                    Text(
                                                      // yourregistrationissuccessfulV5 (69:2023)
                                                      'Your Registration is successful',
                                                      style:  TextStyle (
                                                        fontFamily: 'Roboto',
                                                        fontSize:  14,
                                                        fontWeight:  FontWeight.w400,
                                                        height:  2,
                                                        letterSpacing:  0.48,
                                                        color:  Color(0xff035ea6),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                    }
                                  },
                                  child: const Text('SIGN UP',
                                    style:  TextStyle (
                                    fontFamily: 'Roboto',
                                    fontSize:  25,
                                    fontWeight:  FontWeight.w600,
                                    height:  1.1725,
                                    letterSpacing:  0.84,
                                    color:  Color(0xff2d368e),
                                  ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 33,

                        // group8619b6f (65:179)
                        margin:  EdgeInsets.fromLTRB(90, 0, 0, 0),
                        child:
                          Container(
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // alreadyhaveanaccountu7M (65:148)
                                  //margin:  EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                  child:
                                  TextButton(
                                    onPressed:  () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => signinpage()),
                                    );},
                                    style:  TextButton.styleFrom (
                                      //padding:  EdgeInsets.zero,
                                    ),
                                  child:
                                  const Text(
                                    'Already have an account?',
                                    textAlign:  TextAlign.center,
                                    style:  TextStyle (
                                      fontFamily: 'Roboto',
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w400,
                                      height:  1.1725,
                                      letterSpacing:  0.42,
                                      color:  Color(0xff2d368e),
                                    ),
                                  ),
                                  ),
                                ),
                                Container(
                                  child:
                                  TextButton(
                                    onPressed:  () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => signinpage()),
                                      );
                                    },
                                    style:  TextButton.styleFrom (
                                      //padding:  EdgeInsets.zero,
                                    ),
                                  child:
                                  const Text(
                                    // loginR5h (65:149)
                                    'Login',
                                    textAlign:  TextAlign.center,
                                    style:  TextStyle (
                                      fontFamily: 'Roboto',
                                      fontSize:  15,
                                      fontWeight:  FontWeight.w800,
                                      height:  1.1725,
                                      letterSpacing:  0.42,
                                      decoration:  TextDecoration.underline,
                                      color:  Color(0xff2d368e),
                                      decorationColor:  Color(0xff2d368e),
                                    ),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ),
      )
    );
  }
  Widget _appBar() {
    return CommonAppbarView(
      iconData: Icons.arrow_back,
      titleText: "sign_up",
      onBackClick: () {
        Navigator.pop(context);
      },
    );
  }

  bool _allValidation() {
    bool isValid = true;
    if (_emailController.text.trim().isEmpty) {
      _errorEmail = 'Email cannot empty';
      isValid = false;
    } else if (!Validator.validateEmail(_emailController.text.trim())) {
      _errorEmail = 'Enter valid Email';
      isValid = false;
    } else {
      _errorEmail = '';
    }

    if (_passwordController.text.trim().isEmpty) {
      _errorPassword = 'Password Cannot Empty';
      isValid = false;
    } else if (_passwordController.text.trim().length < 6) {
      _errorPassword = 'Valid Password';
      isValid = false;
    } else {
      _errorPassword = '';
    }

    setState(() {

    });
    return isValid;
  }
}
