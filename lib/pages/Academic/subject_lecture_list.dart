import 'package:biddabd/Data/subject.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Academic/subject_youttube.dart';
import 'package:flutter/material.dart';

class SubjectLectureList extends StatefulWidget {
    final Subject?subject;
    SubjectLectureList({this.subject});

  @override
  State<SubjectLectureList> createState() => _SubjectLectureListState();
}

class _SubjectLectureListState extends State<SubjectLectureList> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: widget.subject!.subName.toString(),
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

                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: widget.subject!.lecture!.length,
                    itemBuilder: (context, index) {

                      return GestureDetector(
                        onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>SubjectPlayList(
                              lecture:widget.subject!.lecture![index],
                            )));
                        },
                        child: Container(
                          height: size.height*0.12,
                          child: Card(
                              elevation: 4,
                              color: Colors.white,
                              child: ListTile(
                                leading:Container(
                                  // frame2Ga (38:105)
                                 // margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9.08*fem, 0*fem),
                                  width:  120,
                                  height:  double.infinity,
                                  child:
                                  Stack(
                                    children:  [
                                      Positioned(
                                        // groupZ1c (38:106)
                                        left:  0,
                                        top:  0,
                                        child:
                                        Align(
                                          child:
                                          SizedBox(
                                            width:  49.85,
                                            height:  50,
                                            child:
                                            Image.asset(
                                             "Images/academic/circle.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // groupfaS (38:108)
                                        left:  45.9296875,
                                        top:  21.8322753906,
                                        child:
                                        SizedBox(
                                          width:  9.99,
                                          height:  5.62,
                                          child:
                                          Image.asset(
                                          "Images/academic/arrow.png",
                                            width:  9.99,
                                            height:  5.62,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // vectorNDx (38:113)
                                        left:  0.6982421875,
                                        top:  0.6944580078,
                                        child:
                                        Align(
                                          alignment: Alignment.center,
                                          child:
                                          SizedBox(
                                            width:  48.4,
                                            height:  48.6,
                                            child:
                                            Image.asset(
                                              "Images/academic/circle.png"

                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // V3g (30:89)
                                        left: 20 ,
                                        top:  18,
                                        child:
                                        Align(
                                          child:
                                          SizedBox(
                                            width: 10 ,
                                            height:  30,
                                            child:
                                            CustomText(
                                              title: widget.subject!.lecture![index].lecNo.toString(),size: 16,
                                            ),
                                            ),
                                          ),
                                        ),

                                    ],
                                  ),
                                ),

                                title: CustomText(title: widget.subject!.lecture![index].topicName.toString(),size: 16,fw: FontWeight.bold,),
                                subtitle: CustomText(title: widget.subject!.lecture![index].teacherName.toString(),size: 14,),
                              trailing:Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,) )
                          ),
                      )
                      );
                    },
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
