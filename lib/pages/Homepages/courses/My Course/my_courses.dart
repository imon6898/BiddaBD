import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:flutter/material.dart';

class MyCourses extends StatefulWidget {
  final List<Map<String, dynamic>> cardData = [
    {'image': 'Images/professional_grpahics.png', 'text': 'Professional Graphic Design', 'progress': 0.5,    },
    {'image': 'Images/bank_job.png', 'text': 'Bank job Course', 'progress': 0.2,    },
    {'image': 'Images/it_jobs.jpg', 'text': 'Professional UX/UIDesign', 'progress': 0.8,    },
  ];

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    bool _isColor = true;
    bool _iscolor2=false;
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics:NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "My Course",
              iconDataled: Icons.arrow_back_outlined,onpress: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>HomePage()));
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          height: size.height*.06,
                          width: size.width,

                          decoration: BoxDecoration(

                           border: Border.all(color: Colors.grey,width: 1),

                           // boxShadow: [BoxShadow(offset: Offset(2,3),)],
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Row(
                            children: [
                              Expanded(flex: 5,
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        _isColor=!_isColor;
                                        _iscolor2=!_iscolor2;

                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        //color: Colors.grey,


                                          // boxShadow: [BoxShadow(offset: Offset(2,3),)],
                                          borderRadius: _isColor==false?BorderRadius.circular(40):
                                              BorderRadius.circular(0)
                                      ),
                                      child: Center(
                                        child: CustomText(
                                          title: "On Going",
                                          color: _isColor==false?Colors.indigo:Colors.black,
                                        ),
                                      ),
                                    ),
                                  )),
                              Expanded(flex: 5,
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        _isColor=!_isColor;
                                        _iscolor2=!_iscolor2;

                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        //color: Colors.grey,

                                          //border: _isColor==true?
                                         // Border.all(color: Colors.purpleAccent,width: 1):
                                          //Border.all(color: Colors.grey),

                                          // boxShadow: [BoxShadow(offset: Offset(2,3),)],
                                          borderRadius: _iscolor2==true?BorderRadius.circular(40): BorderRadius.circular(0)
                                      ),
                                      child: Center(
                                        child: CustomText(
                                          title: "Complete",
                                          color: _iscolor2==true?Colors.indigo:Colors.black,
                                        ),
                                      ),
                                    ),
                                  )),

                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          controller: new ScrollController(keepScrollOffset: false),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: widget.cardData.map((card) {
                            return  Container(
                                child:
                                Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //elevation: 10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[

                                      Expanded(
                                        flex:12,
                                        child: Image.asset(
                                            card['image'],fit: BoxFit.cover,width: size.width,height: size.height,),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: double.infinity,
                                            height: 40.81,
                                            margin: const EdgeInsets.all(5),
                                            //color: Colors.red,
                                            child: Text(
                                              card['text'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: LinearProgressIndicator(value: card['progress'],
                                            backgroundColor: Colors.grey,
                                            minHeight: 1,
                                            valueColor: AlwaysStoppedAnimation(Colors.green),
                                          ),
                                        ),
                                      ),
                                      
                                      Expanded(
                                        flex: 5,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(173, 48.50),
                                                backgroundColor: Color(0xffe4e6ff),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                                                        bottomRight: Radius.circular(10))
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Text('Continue',style: TextStyle(fontSize: 20, color: Color(0xff2d368e)),),
                                            ),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                )
                            );
                          }).toList(),
                        )


                      ],


              ),
                  ),childCount: 1,
              //ListTile

            ), //SliverChildBuildDelegate
          ),
          //CustomTextFieldForm(),
        ],
      ),
    );
  }
}
