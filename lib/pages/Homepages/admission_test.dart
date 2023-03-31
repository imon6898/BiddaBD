import 'package:biddabd/Data/catagory.dart';
import 'package:biddabd/Data/admission_test_course.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/admission_playlist.dart';
import 'package:flutter/material.dart';

class AdmissionTest extends StatefulWidget {
  final classes = AdmissionTestCourse.getAdmsn();

  @override
  State<AdmissionTest> createState() => _AdmissionTestState();
}

class _AdmissionTestState extends State<AdmissionTest> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: 150,
        width: double.infinity,
        margin: EdgeInsets.only(right: 10),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.classes.length,
            itemBuilder: (context,index)=>
                Card(
                  elevation: 3,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>
                              AdmissionPlaylist(
                                admissionTestCourse: widget.classes[index],)
                          ));
                    },
                    child: Container(
                      height: size.height*.13,
                      width: size.height*.24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //

                      child: Column(
                        children: [
                          Expanded(
                              flex:15,
                              child:Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage(widget.classes[index].addsImg.toString()),fit: BoxFit.cover)

                                ),) ),
                          Expanded(
                            flex:5,
                            child:Container(
                              alignment: Alignment.center,
                              child: CustomText(title: widget.classes[index].addsTitle.toString(),size: 15,fw: FontWeight.w700,),
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
