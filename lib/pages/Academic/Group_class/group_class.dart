import 'package:biddabd/Data/catagory.dart';
import 'package:biddabd/Data/classes.dart';
import 'package:biddabd/Data/sub_division.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Academic/general_subject_list.dart';

import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:flutter/material.dart';

class GroupClass extends StatefulWidget {
 final Classes? divisionClass;
 final  Catagory? catagory;
 GroupClass({this.divisionClass, this.catagory});

  @override
  State<GroupClass> createState() => _GroupClassState();
}

class _GroupClassState extends State<GroupClass> {
  @override
  Widget build(BuildContext context) {

    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
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
                                 widget.catagory!.imgCategory.toString(),fit: BoxFit.fill,
                                ),
                              )),
                          Expanded(flex:1,child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomText(title: "Select Your Group",
                                size: 16,fw: FontWeight.bold,color: Colors.black,),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                   ListView.builder(
                    //scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    
                    itemCount: widget.divisionClass!.divison!.length ,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=> GeneralSubjectList(
                                division: widget.divisionClass!.divison![index],

                              )));
                        },
                        child: Container(
                          height: size.height*0.11,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),

                            child: Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.pinkAccent,
                                      child: Image.asset(widget.divisionClass!.divison![index].divImg.toString()),

                                    ),
                                    SizedBox(width: 20,),
                                    CustomText(title: widget.divisionClass!.divison![index].name.toString(),
                                      size: 16,fw: FontWeight.bold,),

                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16.0),
                                      child: Icon(Icons.arrow_forward_ios_outlined),
                                    ),

                                  ],
                                )
                            ),
                          ),
                        ),
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
