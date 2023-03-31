import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final double? size,decSize;
  final double? lt;
  final int? mx;
  final Color? color;
  final String? title;
  final TextDecoration? decoration;
  final FontWeight? fw;


  CustomText({this.title,this.color,this.size,this.fw, this.lt,this.decoration,this.decSize,this.mx});
  @override
  Widget build(BuildContext context) {
    return Text(title!,style:GoogleFonts.roboto(color: color,fontWeight: fw,fontSize: size,
        letterSpacing: lt,decoration: decoration,decorationThickness: 3,),maxLines: mx,);
  }
}
