import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomRowCard extends StatelessWidget {
  final String? img,name;
  final Color? colorimg,colorName;
  CustomRowCard({this.name,this.img,this.colorimg,this.colorName,});

  @override
  Widget build(BuildContext context) {
   // Size size= MediaQuery.of(context).size;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Image(height: 30,width: 40,image: AssetImage(
              img.toString(),),fit: BoxFit.fill,color:colorimg ,),
          SizedBox(width: 10,),
          CustomText(title: name,fw: FontWeight.bold,size: 20,color: colorName,)
        ],

      ),
    );
  }
}
