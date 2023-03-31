import 'package:biddabd/Data/catagory.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Academic/Group_class/group_class.dart';
import 'package:biddabd/pages/Academic/Group_class/school_classes.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:flutter/material.dart';

class GeneralClasses extends StatefulWidget {
  final Catagory? classCatagories;
  GeneralClasses({this.classCatagories});

  @override
  State<GeneralClasses> createState() => _GeneralClassesState();
}

class _GeneralClassesState extends State<GeneralClasses> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: widget.classCatagories!.nameCatagory.toString(),
            iconDataled: Icons.arrow_back_outlined,onpress: (){
            Navigator.of(context).pop();
              }),
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
                           widget.classCatagories!.imgCategory.toString(),fit: BoxFit.fill,
                        ),
                            )),
                        Expanded(flex:1,child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: CustomText(title: "Select Your Class",
                              size: 16,fw: FontWeight.bold,),
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
                    itemCount: widget.classCatagories!.classes!.length,
                    itemBuilder: (context, index) {
                      //print(widget.classCatagories!.classes![0].divison);
                      return GestureDetector(
                        onTap: (){

                          if(widget.classCatagories!.classes![index].name.toString()=="Class 1-8") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context){
                                  print(widget.classCatagories!.classes![index].divison![index].name);
                                  return SchoolClasses(
                                    divisionClass:widget.classCatagories!.classes![index],

                                  );
                                }));
                          }

                          


                          else if(widget.classCatagories!.classes![index].name.toString()=="Ebtedayee"){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context){
                                  print(widget.classCatagories!.classes![index].divison![index].name);
                                  return SchoolClasses(
                                    divisionClass:widget.classCatagories!.classes![index],
                                  );
                                }));
                          }
                          else {
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=> GroupClass(

                          divisionClass:widget.classCatagories!.classes![index],
                            catagory: widget.classCatagories,
                          )));
                          }

                        },
                        child: Container(
                          height: size.height*0.11,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),

                            child: Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(widget.classCatagories!.classes![index].subImg.toString(),
                                      fit: BoxFit.cover,),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.pinkAccent,
                                      child: Image.asset(widget.classCatagories!.classes![index].imgClass.toString()),

                                    ),
                                    SizedBox(width: 20,),
                                    CustomText(title: widget.classCatagories!.classes![index].name.toString(),
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
