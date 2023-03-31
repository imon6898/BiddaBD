import 'package:biddabd/Data/catagory.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Academic/general_subject_list.dart';
import 'package:flutter/material.dart';

import '../../../Data/classes.dart';

class SchoolClasses extends StatefulWidget {
  final Classes? divisionClass;
  final  catagory =Catagory.getCatagory();
  SchoolClasses({this.divisionClass});

  @override
  State<SchoolClasses> createState() => _SchoolClassesState();
}

class _SchoolClassesState extends State<SchoolClasses> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
       body:  CustomScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          slivers: <Widget>[
            CustomSilver(title: widget.divisionClass!.name.toString(),
              iconDataled: Icons.arrow_back_outlined,onpress: (){
              Navigator.of(context).pop();
              },),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: size.height *.3,

                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  child: Image.asset(
                                    widget.catagory[0].imgCategory.toString(),fit: BoxFit.fill,
                                  ),
                                )),
                            Expanded(flex:1,child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: CustomText(title: "Select Your Class",
                                  size: 16,fw: FontWeight.bold,color: Colors.black,),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: GridView.builder(

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2.3,
                        ),
                        padding: EdgeInsets.zero,
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.divisionClass!.divison!.length,
                        itemBuilder: (context, index) =>
                            Card(
                              elevation: 4,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=>GeneralSubjectList(
                                          division: widget.divisionClass!.divison![index],)));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),



                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(flex: 2,
                                          child: Image.asset(widget.divisionClass!.divison![index].divImg.toString()
                                            ,)),
                                      Expanded(flex: 2,
                                          child: CustomText(title: widget.divisionClass!.divison![index].name.toString(),
                                            size: 18,fw: FontWeight.bold,))
                                    ],
                                  ),
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
