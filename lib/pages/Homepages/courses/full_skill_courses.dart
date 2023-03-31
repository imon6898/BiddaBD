import 'package:biddabd/Data/skill_development_course.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:biddabd/pages/Homepages/search_bar.dart';
import 'package:flutter/material.dart';

class FullSkillCourses extends StatefulWidget {

  final classes = SkillDevelopmentCourse.getSkill();

  @override
  State<FullSkillCourses> createState() => _FullSkillCoursesState();
}

class _FullSkillCoursesState extends State<FullSkillCourses> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFD9EEFE),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "Skill Development Courses",
              onpress: (){
            Navigator.of(context).pop();
          },iconDataled: Icons.arrow_back_outlined,
          ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFieldForm(hintTitle: "Search"),
                  GridView.builder(

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                    ),
                    padding: EdgeInsets.zero,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.classes.length,
                    itemBuilder: (context, index) =>
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: GestureDetector(
                            onTap: (){


                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex:15,
                                    child:Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(image: AssetImage(widget.classes[index].skillImage.toString()),fit: BoxFit.cover,)

                                      ),) ),
                                Expanded(
                                  flex:5,
                                  child:Container(
                                    alignment: Alignment.center,
                                    child: CustomText(title: widget.classes[index].skillTitle.toString(),size: 14,fw: FontWeight.w700,),
                                  ),),
                              ],
                            ),
                          ),
                        ),

                  )

                ],



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
