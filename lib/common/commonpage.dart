
import 'package:biddabd/login/signinpage.dart';
import 'package:biddabd/login/signuppage.dart';
import 'package:flutter/material.dart';

class commonpage extends StatelessWidget {
  const commonpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // landing4RV (59:6780)
          width:  double.infinity,
          height:  800,
          decoration:  const BoxDecoration (
            color:  Color(0xffffffff),
          ),
          child:
          Stack(
            children:  [
            Positioned(
            // groupLto (66:800)
            left:  0,
            top:  -70,
            child:
            Align(
              child:
              SizedBox(
                width:  390,
                height:  865,
                child:
                Image.asset(
                  'Images/images/common1.png',
                  color: const Color(0xffbfccd6),
                  width:  380,
                  height:  400,
                ),
              ),
            ),
          ),
          Positioned(
            // ellipse213Cxw (62:7689)
            left:  -150,
            top:  -90,
            child:
            Align(
              child:
              SizedBox(
                width:  700,
                height:  432,
                child:
                Image.asset(
                  'Images/images/Common2.png',
                  width:  638,
                  height:  432,
                ),
              ),
            ),
          ),
          Positioned(
            // group8584KXm (59:7654)
            left:  50,
            top:  380,
            child:
            Container(
              width:  332,
              height:  58,
              child:
              Stack(
                children:  [
                  Positioned(
                    // maskgrouprGo (59:7655)
                    left:  30,
                    top:  1.0015869141,
                    child:
                    Align(
                      child:
                      SizedBox(
                        width:  280.5,
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
                    left:  0,
                    top:  0,
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
          Positioned(
            // group86203MH (66:1109)
            left:  20,
            top:  520,
            child:
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
                width:  355,
                height:  50,
                decoration:  BoxDecoration (
                    border:  Border.all(color: Color(0xff2d368e)),
                color:  Color(0xffffffff),
                borderRadius:  BorderRadius.circular(45),
                boxShadow:  const [
                  BoxShadow(
                    color:  Color(0x26000000),
                    offset:  Offset(0, 0),
                    blurRadius:  2,
                  ),
                ],
              ),
              child:
              const Center(
                child:
                Text(
                  'SIGN IN',
                  textAlign:  TextAlign.center,
                  style:  TextStyle (
                    fontFamily: "Roboto",
                    fontSize:  16,
                    fontWeight:  FontWeight.w700,
                    height:  1.1725,
                    letterSpacing:  0.48,
                    color:  Color(0xff2d368e),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // group86212U7 (66:1110)
          left:  20,
          top:  580,
          child:
          TextButton(
            onPressed:  () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signuppage()),
              );
            },
            style:  TextButton.styleFrom (
              padding:  EdgeInsets.zero,
            ),
            child:
            Container(
              width:  355,
              height:  50,
              decoration:  BoxDecoration (
                  border:  Border.all(color: Color(0xff2d368e)),
              color:  Color(0xffffffff),
              borderRadius:  BorderRadius.circular(42),
              boxShadow:  const [
                BoxShadow(
                  color:  Color(0x26000000),
                  offset:  Offset(0, 0),
                  blurRadius:  2,
                ),
              ],
            ),
            child:
            const Center(
              child:
              Text(
                'SIGN UP',
                textAlign:  TextAlign.center,
                style:  TextStyle (
                  fontFamily: "Roboto",
                  fontSize:  16,
                  fontWeight:  FontWeight.w700,
                  height:  1.1725,
                  letterSpacing:  0.48,
                  color:  Color(0xff2d368e),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        // groupT3d (67:1337)
        left:  258,
        top:  690,
        child:
        Align(
          child:
          SizedBox(
            width:  144.9,
            height:  86.29,
            child:
            Image.asset(
              'Images/images/common3.png',
              width:  144.9,
              height:  86.29,
            ),
          ),
        ),
      ),
      Positioned(
        // group89m (67:1512)
        left:  340,
        top:  450,
        child:
        Align(
          child:
          SizedBox(
            width:  70.52,
            height:  64.2,
            child:
            Image.asset(
              'Images/images/common7.png',
              width:  70.52,
              height:  64.2,
            ),
          ),
        ),
      ),
      Positioned(
        // vectorECo (67:1507)
        left:  0,
        top:  690,
        child:
        Align(
          child:
          SizedBox(
            width:  131.69,
            height:  103.79,
            child:
            Image.asset(
              'Images/images/common4.png',
              width:  131.69,
              height:  103.79,
            ),
          ),
        ),
      ),
      Positioned(
        // vectorx8o (67:1453)
        left:  21,
        top:  745,
        child:
        Align(
          child:
          SizedBox(
            width:  35,
            height:  44.6,
            child:
            Image.asset(
              'Images/images/common5.png',
              width:  35,
              // height:  44.6,
            ),
          ),
        ),
      ),
      const Positioned(
        // rjy (67:1454)
        left:  38.8505859375,
        top:  750.1235351562,
        child:
        Align(
          child:
          SizedBox(
            width:  14,
            height:  32,
            child:
            Text(
              '6',
              style:  TextStyle (
                fontFamily: 'Quicksand',
                fontSize:  24.8777999878,
                fontWeight:  FontWeight.w700,
                height:  1.25,
                color:  Color(0xff1a245c),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        // framemM9 (69:1596)
        left:  40,
        top:  40,
        child:
        Align(
          child:
          SizedBox(
            width:  323.09,
            height:  244.19,
            child:
            Image.asset(
              'Images/images/common6.png',
              width:  323.09,
              height:  244.19,
            ),
          ),
        ),
      ),
      ],
    ),
    ),

      ),
    );
  }
}
