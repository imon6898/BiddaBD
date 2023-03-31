import 'package:biddabd/Data/catagory.dart';
import 'package:biddabd/Data/classes.dart';
import 'package:biddabd/Data/sub_division.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:biddabd/pages/Academic/subject_lecture_list.dart';
import 'package:biddabd/pages/Homepages/courses/kid_course.dart';
import 'package:flutter/material.dart';

class GeneralSubjectList extends StatefulWidget {
  final Division? division;
  final Classes? classes;

  GeneralSubjectList({this.division,this.classes});

  @override
  State<GeneralSubjectList> createState() => _GeneralSubjectListState();
}

class _GeneralSubjectListState extends State<GeneralSubjectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9EEFE),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "${widget.division!.name.toString()}",
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
                  CustomTextFieldForm(hintTitle: "Search",iconData: Icons.search_outlined,),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: GridView.builder(

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.4,
                      ),
                      padding: EdgeInsets.zero,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.division!.subject!.length,
                      itemBuilder: (context, index) =>
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>SubjectLectureList(
                                      subject: widget.division!.subject![index],
                                    )));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex:16,
                                      child:Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: widget.division!.subject![index].color,
                                            image: DecorationImage(
                                                image: AssetImage(widget.division!.subject![index].subImg.toString()),fit: BoxFit.fill)

                                        ),) ),
                                  Expanded(
                                    flex:4,
                                    child:Container(
                                      alignment: Alignment.center,
                                      child: CustomText(title: widget.division!.subject![index].subName,size: 14,fw: FontWeight.w400,mx: 1),
                                    ),),
                                ],
                              ),
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
