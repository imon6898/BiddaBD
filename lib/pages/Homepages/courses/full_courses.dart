import 'package:biddabd/Widgets/custom_row_field.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:biddabd/pages/Homepages/professional_course.dart';
import 'package:biddabd/pages/Homepages/admission_test.dart';
import 'package:biddabd/pages/Homepages/courses/kid_course.dart';
import 'package:biddabd/pages/Homepages/courses/language_learning.dart';
import 'package:biddabd/pages/Homepages/skill_course.dart';
import 'package:flutter/material.dart';

class FullCourses extends StatefulWidget {
  const FullCourses({Key? key}) : super(key: key);

  @override
  State<FullCourses> createState() => _FullCoursesState();
}

class _FullCoursesState extends State<FullCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "All Courses",
            iconDataled: Icons.arrow_back_outlined,),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 CustomTextFieldForm(
                     hintTitle: "Search Courses",
                 ),
                    SizedBox(height: 16,),
                    CustomRowField(rowtitle: "Skill Development Course",),
                    SizedBox(height: 16,),
                    SkillCourses(),
                    SizedBox(height: 16,),
                    CustomRowField(rowtitle: "Professor Course ",),
                    SizedBox(height: 16,),
                    Professional(),
                    SizedBox(height: 16,),
                    CustomRowField(rowtitle: "Admission Test",),
                    SizedBox(height: 16,),
                    AdmissionTest(),
                    SizedBox(height: 16,),
                    CustomRowField(rowtitle: "Language Learning",),
                    SizedBox(height: 16,),
                    LanguageLearning(),
                    SizedBox(height: 16,),
                    CustomRowField(rowtitle: "Kid's Course",),
                    SizedBox(height: 16,),
                    KidCourse()






                ],



              ),
                  ),childCount: 1,
              //ListTile

            ), //SliverChildBuildDelegate
          )
          //CustomTextFieldForm(),
        ],
      ),
    );
  }
}
