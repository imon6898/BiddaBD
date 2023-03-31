import 'package:biddabd/pages/Homepages/courses/My%20Course/my_courses.dart';
import 'package:biddabd/pages/Homepages/courses/full_courses.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:biddabd/profile/my_course.dart';
import 'package:biddabd/profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int current_index = 0;
  final List<Widget> pages = [HomePage(), FullCourses(), MyCourses(),MyProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(

          iconSize: 24,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          currentIndex: current_index,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (index){
            setState(() {
              current_index = index;
            });
          },
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    pages[0];
                  },
                  child: Icon(Icons.home)), label: "Home", tooltip: "Search",),
            BottomNavigationBarItem(

              icon: GestureDetector( onTap: (){
                pages[1];
              },
                  child: Icon(Icons.rocket_launch_outlined)),
              label: "Courses",),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartPie),
              label: "Progress",),
            BottomNavigationBarItem(
                icon: GestureDetector( onTap: (){
                  pages[3];
                },
                child: Icon(Icons.account_circle_outlined)),
                label: "Profile",),
          ]),
    );
  }
}
