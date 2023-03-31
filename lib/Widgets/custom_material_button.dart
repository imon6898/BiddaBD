import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {

  final double? size;
  final IconData? iconData;
  final String? buttonTitle;
  final VoidCallback? onpress;
  CustomMaterialButton({this.iconData,this.buttonTitle,this.onpress, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: MaterialButton(
        color: Color(0xFF2D368E),
          onPressed: onpress,
        child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(iconData,size: 18,color: Colors.white,),
          SizedBox(width: 10,),
          CustomText(title: buttonTitle,size: 18,color: Colors.white,)
        ],

      ),),
    );
  }
}
