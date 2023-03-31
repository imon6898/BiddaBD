import 'package:biddabd/Data/kid_data.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/courses/kid_course_playlist.dart';
import 'package:flutter/material.dart';



class KidCourse extends StatefulWidget {
  final course =KidData.getCourse();
  @override
  State<KidCourse> createState() => _KidCourseState();
}

class _KidCourseState extends State<KidCourse> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
      child: Container(
        height: size.height *.18,
        width: double.infinity,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context,index)=>
                Card(
                  elevation: 4,
                  child: GestureDetector(
                    onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>
                                    KidCoursePlayList(learningData: widget.course[index],)));
                    },
                    child: Container(
                      height: size.height*.18,
                      width: size.height*.28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Expanded(
                              flex:15,
                              child:Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage(widget.course[index].kidImage.toString()),fit: BoxFit.cover)

                                ),) ),
                          Expanded(
                            flex:5,
                            child:Container(
                              alignment: Alignment.center,
                              child: CustomText(title: widget.course[index].kidTitle.toString(),size: 15,fw: FontWeight.w700,),
                            ),),
                        ],
                      ),


                    ),
                  ),
                )
        ),
      ),
    );
  }
}
