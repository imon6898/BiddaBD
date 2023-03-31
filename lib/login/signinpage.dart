
import 'package:biddabd/login/common_button.dart';
import 'package:biddabd/login/common_text_field_view_one.dart';
import 'package:biddabd/login/common_text_field_view_two.dart';
import 'package:biddabd/login/signuppage.dart';
import 'package:biddabd/login/validator.dart';
import 'package:biddabd/pages/Homepages/first_page.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:flutter/material.dart';

class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  //State<signinpage> createState() => _signinpageState();
  _signinpageState createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  bool rememberpwd = false;
  String _errorEmail = '';
  TextEditingController _emailController = TextEditingController();
  String _errorPassword = '';
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          // landingUgQ (65:88)
          width:  double.infinity,
         // height: double.infinity,
          decoration:  const BoxDecoration (
            color:  Color(0xffffffff),
          ),
          child:
          Column(
            crossAxisAlignment:  CrossAxisAlignment.center,
            children:  [
              Container(

                width:  double.infinity,
                height:  217,
                decoration:  const BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Stack(
                  children:  [
                  Positioned(
                  // groupLto (66:800)
                  left:  -150,
                  top:  -320,
                  child:
                  Align(
                    child:
                    SizedBox(
                      width:  700,
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
                      left:  75,
                      top:  -70,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  250,
                          height:  360,
                          child:
                          Image.asset(
                            'Images/images/signin2.png',
                            width:  638,
                            height:  432,
                          ),
                        ),
                      ),
                    ),
                ],
                ),

                //autogroup2evfPHa (6Jii4JBPPQXmy7gg8P2evF)
                //padding:  EdgeInsets.fromLTRB(205, 300, 205, 200),
                /*padding:  const EdgeInsets.fromLTRB(0, 108, 0, 0),
                width:  double.infinity,
                height:  400,
                decoration: const BoxDecoration (
                  image:  DecorationImage (
                    fit:  BoxFit.cover,

                    image:  AssetImage (
                      'assets/bidda-bd/images/signin1.png',
                    ),
                  ),
                ),*/
                /*child:
                Align(
                  // framefkt (69:1684)
                  alignment:  Alignment.bottomCenter,
                  child:
                  SizedBox(
                    width:  210,
                    height:  155,
                    child:
                    Image.asset(
                      'assets/bidda-bd/images/signin2.png',
                      width:  227.36,
                      height:  171.43,
                    ),
                  ),
                ),*/
              ),
              Container(
                // autogroupakvfYZn (6JijqQtEhWAtWDwb1zakvf)
                padding:  const EdgeInsets.fromLTRB(0, 12, 0, 34),
                width:  double.infinity,
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // autogroupg8ax4Y8 (6JiiFsgRqC3fSW5XT1g8aX)
                      margin:  const EdgeInsets.fromLTRB(0, 0, 98, 13.95),
                      width:  double.infinity,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:  [
                          Container(
                            // groupzAt (67:1411)
                            margin:  const EdgeInsets.fromLTRB(0, 50, 50, 0),
                            width:  70,
                            height:  40,
                            child:
                            Image.asset(
                              'Images/images/signin3.png',
                              width:  76.12,
                              height:  68.28,
                            ),
                          ),
                          Container(
                            // autogroupymtp5CL (6JiiWcks4QwVTaPmrKYmtP)
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // weclomeRmz (65:162)
                                  margin:  const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                  child:
                                  const Text(
                                    'Weclome',
                                    style:  TextStyle (
                                      fontFamily: "Roboto",
                                      fontSize:  36,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.1725,
                                      letterSpacing:  1.08,
                                      color:  Color(0xffbc202e),
                                    ),
                                  ),
                                ),
                                const Text(
                                  // logintoyouraccount6t8 (65:163)
                                  'Login to your account',
                                  style:  TextStyle (
                                    fontFamily: "Roboto",
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
                    Container(
                      child: Column(
                        children: <Widget>[
                          CommonTextFieldViewOne(

                            controller: _emailController,
                            errorText: _errorEmail,
                            padding: const EdgeInsets.only(
                                left: 24, right: 24, bottom: 16),
                            hintText:
                            "Email Address",

                            keyboardType: TextInputType.emailAddress,
                            onChanged: (String txt) {},
                          ),
                          CommonTextFieldViewTwo(
                            padding: const EdgeInsets.only(left: 24, right: 24),
                            hintText: "Password",
                            isObscureText: true,
                            onChanged: (String txt) {},
                            errorText: _errorPassword,
                            controller: _passwordController,
                          ),
                          //_forgotYourPasswordUI(),
                          /*CommonButton(
                            padding: EdgeInsets.only(left: 24, right: 24, bottom: 16),
                            buttonText: "SIGNIN",
                            onTap: () {
                              if (_allValidation())
                                MaterialPageRoute(builder: (context) => signuppage());
                            },
                          ),*/
                        ],
                      ),
                    ),
                    /*Container(
                      // autogroupfsgxRvQ (6Jiig2er8GTdWED9AofsgX)
                      margin:  EdgeInsets.fromLTRB(16, 0, 16, 25),
                      padding:  EdgeInsets.fromLTRB(0, 0, 172, 0),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xff2d368e)),
                        borderRadius:  BorderRadius.circular(5),
                      ),
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogrouppzpfvcG (6JiirC2akFWutbXwoBpZpF)
                            margin:  EdgeInsets.fromLTRB(0, 0, 11, 0),
                            width:  48,
                            height:  50,
                            child:
                            Image.asset(
                              'assets/bidda-bd/images/signin4.png',
                              width:  48,
                              height:  50,
                            ),
                          ),
                          Container(
                            // emailaddress17v (65:99)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 1),
                            child:
                            Text(
                              'Email Address',
                              style:  TextStyle (
                                fontFamily: "Roboto",
                                fontSize:  14,
                                fontWeight:  FontWeight.w700,
                                height:  1.1725,
                                letterSpacing:  0.42,
                                color:  Color(0xffcdcdcd),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),*/
                    /*Container(
                      // autogroupyfwyVYt (6Jij2MQKNEaCGxrkRZyFwy)
                      margin:  EdgeInsets.fromLTRB(16, 0, 16, 18),
                      padding:  EdgeInsets.fromLTRB(0, 0, 203, 0),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xff2d368e)),
                        borderRadius:  BorderRadius.circular(5),
                      ),
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogroupmzbybM2 (6JijC1ntHTwP6rWbWgmZBy)
                            margin:  EdgeInsets.fromLTRB(0, 0, 11, 0),
                            width:  48,
                            height:  50,
                            child:
                            Image.asset(
                              'assets/bidda-bd/images/signin5.png',
                              width:  48,
                              height:  50,
                            ),
                          ),
                          Container(
                            // passwordusW (65:104)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 1),
                            child:
                            Text(
                              'Password',
                              style:  TextStyle (
                                fontFamily: "Roboto",
                                fontSize:  14,
                                fontWeight:  FontWeight.w700,
                                height:  1.1725,
                                letterSpacing:  0.42,
                                color:  Color(0xffcdcdcd),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),*/
                    Container(
                      // autogrouposymEet (6JijKBFcgvr68MoeuUosyM)
                      margin:  const EdgeInsets.fromLTRB(15, 0, 20, 10),
                      width:  double.infinity,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildRememberassword(),
                          buildForgetPassword()
                        ],
                      ),
                    ),
                    Container(
                      // autogrouptmddUxY (6JijWkkf8iMybkCWE7TMdd)
                      margin:  const EdgeInsets.fromLTRB(16, 0, 0, 13),
                      width:  404.63,
                      height:  120,
                      child:
                      Stack(
                        children:  [
                          Positioned(
                            // rectangle3128QbJ (65:122)
                            left:  0,
                            top:  154.8908691406,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  328,
                                height:  50,
                                child:
                                TextButton(
                                  onPressed:  () {},
                                  style:  TextButton.styleFrom (
                                    padding:  EdgeInsets.zero,
                                  ),
                                  child:
                                  Container(
                                    decoration:  BoxDecoration (
                                      borderRadius:  BorderRadius.circular(45),
                                      border:  Border.all(color: const Color(0xff2d368e)),
                                      color:  const Color(0xffffffff),
                                      boxShadow:  [
                                        const BoxShadow(
                                          color:  Color(0x26000000),
                                          offset:  Offset(0, 0),
                                          blurRadius:  2,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            // groupvCG (67:1534)
                            left:  260,
                            top:  0,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  130,
                                height:  120,
                                child:
                                Image.asset(
                                  'Images/images/signin7.png',
                                  width:  130,
                                  height:  120,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // abcQ7S (67:1402)
                            left:  12,
                            top:  40,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  53,
                                height:  27,
                                child:
                                Text(
                                  'A B C',
                                  style:  TextStyle (
                                    fontFamily: 'Quicksand',
                                    fontSize:  21.1224994659,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.25,
                                    color:  Color(0xffcdcdcd),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // groupfp4 (67:1520)
                            left:  31,
                            top:  102.8908691406,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  18.7,
                                height:  15.3,
                                child:
                                Image.asset(
                                  'Images/images/signin8.png',
                                  width:  18.7,
                                  height:  15.3,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // groupY7A (67:1526)
                            left:  82,
                            top:  30,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  18.43,
                                height:  18.01,
                                child:
                                Image.asset(
                                  'Images/images/signin9.png',
                                  width:  18.43,
                                  height:  18.01,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height:20),
                    CommonButton(
                      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                      buttonText: "SIGN IN",
                      onTap: () {
                       Navigator.of(context).push(
                           MaterialPageRoute(builder: (context)=>FirstPage()));
                      },
                    ),
                    const SizedBox(height:20),
                    Container(
                      height: 20,
                      // group8618DUC (65:174)
                      margin:  const EdgeInsets.fromLTRB(70, 0, 70.5, 0),
                      child:
                      TextButton(
                        onPressed:  () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const signuppage()),
                          );
                        },
                        style:  TextButton.styleFrom (
                          padding:  EdgeInsets.zero,
                        ),
                        child:
                          Container(
                          width:  double.infinity,
                          child:
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                // donthaveanaccount85N (65:126)
                                margin:  const EdgeInsets.fromLTRB(0, 0, 15.5, 0),
                                child:
                                const Text(
                                  'Don’t have an account?',
                                  textAlign:  TextAlign.center,
                                  style:  TextStyle (
                                    fontFamily: "Roboto",
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.1725,
                                    letterSpacing:  0.42,
                                    color:  Color(0xff2d368e),
                                  ),
                                ),
                              ),
                              const Text(
                                // signupQYg (65:127)
                                'Sign up',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontFamily: "Roboto",
                                  fontSize:  14,
                                  fontWeight:  FontWeight.w700,
                                  height:  1.1725,
                                  letterSpacing:  0.42,
                                  decoration:  TextDecoration.underline,
                                  color:  Color(0xff2d368e),
                                  decorationColor:  Color(0xff2d368e),
                                ),
                              ),
                            ],
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
      ),
    );
  }

  Widget _forgotYourPasswordUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 16, bottom: 8, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            onTap: () {
              //NavigationServices(context).gotoForgotPassword();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "forgot_your_Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).disabledColor,
                ),
              ),
            ),
          ),
        ],
      ),
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
      _errorPassword = 'Password cannot empty';
      isValid = false;
    } else if (_passwordController.text.trim().length < 6) {
      _errorPassword = 'Valid password';
      isValid = false;
    } else {
      _errorPassword = '';
    }
    setState(() {
    });
    return isValid;
  }

  Widget buildRememberassword(){
    return Container(
      height: 40,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value:  rememberpwd,
                checkColor: Colors.blueGrey,
                activeColor: Colors.white,
                side:  BorderSide(color: Color(0xff2d368e)),
                onChanged: (value)
                {
                  setState(() {
                    rememberpwd=value!;
                  });
                },
              )),
          Text("Remember me", style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.blueAccent),),
        ],
      ),
    );
  }
  Widget buildForgetPassword(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(child: Text("Forget Password?",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueAccent)),onPressed: (){},),
    );
  }

}