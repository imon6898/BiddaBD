import 'package:biddabd/Widgets/custom_row_field.dart';
import 'package:biddabd/Widgets/custom_sillver_appbar.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Academic/academic_bar.dart';
import 'package:biddabd/pages/Homepages/professional_course.dart';
import 'package:biddabd/pages/Homepages/admission_test.dart';
import 'package:biddabd/pages/Homepages/blog_portal.dart';
import 'package:biddabd/pages/Homepages/courses/full_skill_courses.dart';
import 'package:biddabd/pages/Homepages/custom_navigator.dart';
import 'package:biddabd/pages/Homepages/library.dart';
import 'package:biddabd/pages/Homepages/search_bar.dart';
import 'package:biddabd/pages/Homepages/skill_course.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(

      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
          slivers: <Widget>[
            CustomSilverAppbar(), //SliverAppBar
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        SearchBar(),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(title: "Academic Subject ",size: 16,fw: FontWeight.w700,),
                              SizedBox(height: 15,),
                              Academic(),
                              SizedBox(height: 30,),
                              CustomRowField(rowtitle: "Skill Development Course",ontap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context)=>FullSkillCourses()));
                              },),
                              SizedBox(height: 15,),
                              SkillCourses(),
                              SizedBox(height: 20,),
                              CustomRowField(rowtitle: "Professional Course"),
                              SizedBox(height: 10,),
                              Professional(),
                              SizedBox(height: 20,),
                              CustomRowField(rowtitle: "Admission Test",),
                              SizedBox(height: 20,),
                              AdmissionTest(),
                              SizedBox(height: 20,),
                              CustomRowField(rowtitle: "Library",),
                              SizedBox(height: 20,),
                              Library(),
                              SizedBox(height: 40,),
                              CustomRowField(rowtitle: "Our Blog",),
                              SizedBox(height: 20,),
                              Blogportal(),

                            ],
                          ),
                        ),

                      ],


                    ),childCount: 1,
                       //ListTile

              ), //SliverChildBuildDelegate
            ) //SliverList
          ],

      ),
     // bottomNavigationBar: CustomNavigator(),
    );
  }
}
