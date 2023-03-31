import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomRowField extends StatelessWidget {
 final String? rowtitle;
  final VoidCallback? ontap;
 CustomRowField({this.rowtitle, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(title: rowtitle!,size: 16,fw: FontWeight.w700,),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(children: [
            TextButton(
                child: CustomText(title: "view all",size: 14,fw: FontWeight.w700,color: Colors.black,),onPressed: ontap,),
            Icon(Icons.arrow_forward_ios_outlined,size: 12,)
          ],),
        )

      ],
    );
  }
}
