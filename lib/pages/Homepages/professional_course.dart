import 'package:biddabd/Data/pro_dev_courses.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/courses/normal_playlist.dart';
import 'package:flutter/material.dart';

class Professional extends StatefulWidget {

  final classes = ProDevCourses.getPro();

  @override
  State<Professional> createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>NormalPlaylist(
                            learningData: widget.classes[index],
                          )));
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
                                    image: DecorationImage(image: AssetImage(widget.classes[index].proImage.toString()),fit: BoxFit.cover)

                                ),) ),
                          Expanded(
                            flex:5,
                            child:Container(
                              alignment: Alignment.center,
                              child: CustomText(title: widget.classes[index].proTitle.toString(),size: 15,fw: FontWeight.w700,),
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
