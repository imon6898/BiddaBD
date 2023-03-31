import 'package:biddabd/pages/Homepages/courses/full_courses.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomNavigator extends StatefulWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  State<CustomNavigator> createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> {
  int current_index = 0;
//  final List<Widget> pages = [HomePage(), FullCourses(), FullCourses(),HomePage()];
 
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

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
              icon: Icon(Icons.home), label: "Home", tooltip: "Search",),
          BottomNavigationBarItem(

              icon: Icon(Icons.rocket_launch_outlined),
              label: "Courses",),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartPie),
            label: "Progress",),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,), label: "Profile", tooltip: "Home"),


        ]);
  }
}
