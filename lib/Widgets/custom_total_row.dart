import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTotalRow extends StatelessWidget {
 final String? row1,row2;
 final double? rsize;
 final Color? rCOlor,tColor;
 CustomTotalRow({this.row1,this.row2,this.rsize,this.rCOlor,this.tColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(title: row1,color: rCOlor,size: rsize,fw: FontWeight.bold,),
          Spacer(),
          CustomText(title: row2,color: tColor,size: rsize,),
        ],
      ),
    );
  }
}
