import 'package:biddabd/Data/catagory.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Academic/general_education_class.dart';
import 'package:flutter/material.dart';

class Academic extends StatefulWidget {
  final classes = Catagory.getCatagory();

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  final classes = Catagory.getCatagory();

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: 150,
        width: double.infinity,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.classes.length,
            itemBuilder: (context,index)=>
                Card(
                  elevation: 4,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>GeneralClasses(classCatagories: classes[index],)));
                    },
                    child: Container(
                      height: size.height*.12,
                      width: size.height*.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),

                      child: Column(
                        children: [
                          Expanded(
                            flex:7,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(
                                      widget.classes[index].imgCategory.toString()),
                                      fit: BoxFit.fill)



                              ),),
                          ),
                          Expanded(
                            flex:3,child:Container(
                            child: Center(
                              child: CustomText(title:widget.classes[index].nameCatagory.toString(),size: 14,),
                            ),
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
