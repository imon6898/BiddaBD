import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomRowImages extends StatelessWidget {
   final String?nameRow,imgRow,radioRow;
   final Color? nameColor,radioColor;
   CustomRowImages({this.imgRow,this.nameColor,this.nameRow,this.radioColor,this.radioRow});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(height: 20,width:20,image: AssetImage(
              radioRow.toString()),fit: BoxFit.fill, color: radioColor,),
          Image(height: 30,width: 40,image: AssetImage(
          imgRow.toString()),fit: BoxFit.fill, ),
          SizedBox(width: 10,),

          CustomText(title:nameRow,fw: FontWeight.bold,size: 20,color: nameColor,)
        ],

      ),
    );
  }
}
