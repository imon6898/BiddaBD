import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/first_page.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:biddabd/profile/change_password_page.dart';
import 'package:biddabd/profile/my_course.dart';
import 'package:biddabd/profile/mycertificate_page.dart';
import 'package:biddabd/profile/order_history.dart';
import 'package:biddabd/profile/update_profile.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
                width:  double.infinity,
                height:  800,
                decoration:  const BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                      child: Container(
                        width:  double.infinity,
                        height:  360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Scaffold(
                              backgroundColor: Color(0xffe4e6ff),
                              appBar: PreferredSize(
                                preferredSize: Size.fromHeight(110.0),
                                child: AppBar(
                                  backgroundColor: Color(0xff2d368e),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(10),
                                    ),
                                  ),
                                  title:
                                  Text('My Profile'),
                                  leading: IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context)=>HomePage())
                                  ); },
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                FocusScope.of(context).unfocus();
                              },
                              child: ListView(
                                padding: EdgeInsets.only(left: 20, top: 110, right: 15),
                                children: [
                                  Center(
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 5,color:  Color(0xffeeeeee),),
                                            boxShadow: [
                                              BoxShadow(
                                                  spreadRadius: 2,
                                                  blurRadius: 10,
                                                  color: Colors.black.withOpacity(0.1)
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover, image: AssetImage('Images/asset/people.png'),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 3,
                                                color:  Colors.white,
                                              ),
                                              color:  Color(0xffeeeeee),
                                            ),
                                            child: Icon(
                                              Icons.edit_calendar_outlined,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              left: 90,
                              top: 210,
                              child: Column(
                                children: [
                                  SizedBox(height: 5),
                                  CustomText(
                                    color: Colors.black,
                                    title: 'Jhon Doe',
                                    size: 20,fw: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                  SizedBox(height: 5),
                                  CustomText(
                                    color: Colors.black,
                                    title: 'john.doe@example.com',
                                    size: 18,fw: FontWeight.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                  SizedBox(height: 5),
                                  CustomText(
                                    color: Colors.black,
                                    title: '+1 123-456-7890',
                                    size: 18,fw: FontWeight.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(
                                  left: 0, top: 300.0, right: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          fixedSize: const Size(180, 50),
                                          foregroundColor: Colors.white,
                                          elevation: 2,
                                          backgroundColor: Color(0xff2d368e)),
                                      onPressed: () {},
                                      child: Text('Running Courses:\n02',textAlign:  TextAlign.center,),
                                    ),
                                    //SizedBox(width: 10),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          fixedSize: const Size(180, 50),
                                          foregroundColor: Colors.white,
                                          elevation: 2,
                                          backgroundColor: Color(0xff2d368e)),
                                      onPressed: () {},
                                      child: Text('Completed Courses:\n05',textAlign:  TextAlign.center,),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(top: 360),
                      child: Column(
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.50, 0),
                            ),// <-- TextButton
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UpdateProfile()),
                              );
                            },
                            icon: Icon(
                              Icons.person_rounded,
                              size: 24.0,
                            ),
                            label: Text('Profile Information',style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.52, 0),
                            ),// <-- TextButton
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChangePassword()),
                              );
                            },
                            icon: Icon(
                              Icons.lock_reset_outlined,
                              size: 24.0,
                              color: Color(0xff3a50c7),
                            ),
                            label: Text('Change Password',style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              //foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.60, 0),
                            ),// <-- TextButton
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyCertificete()),
                              );
                            },
                            icon: Icon(
                              Icons.stars_sharp,
                              color: Color(0xfffdf002),
                              size: 24.0,
                            ),
                            label: Text('My Certificates',style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.70, 0),
                            ),// <-- TextButton
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_book,
                              color: Color(0xff2d8a12),
                              size: 24.0,
                            ),
                            label: Text('My Books',style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.70, 0),
                            ),// <-- TextButton
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyCourse()),
                              );
                            },
                            icon: Icon(
                              Icons.add_box_rounded,
                              color: Color(0xff112481),
                              size: 24.0,
                            ),
                            label: Text('My Courses',style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.70, 0),
                            ),// <-- TextButton
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OrderHistory()),
                              );
                            },
                            icon: Icon(
                              Icons.history_edu_outlined,
                              color: Colors.blueAccent,
                              size: 24.0,
                            ),
                            label: Text('Order History',style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              //foregroundColor: Colors.black,
                              //backgroundColor: Colors.yellow,
                              alignment: Alignment(-0.75, 0),
                            ),// <-- TextButton
                            onPressed: () {},
                            icon: Icon(
                              Icons.logout_outlined,
                              color: Colors.red,
                              size: 24.0,
                            ),
                            label: Text('Log Out',
                                style: TextStyle(color: Colors.black, fontSize: 17,)),
                          ),

                        ],
                      ),)
                  ],
                ),
              ),
      ),
      //bottomNavigationBar: FirstPage(),
    );
  }
}
