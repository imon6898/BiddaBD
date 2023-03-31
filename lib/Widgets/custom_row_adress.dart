import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomRowAddress extends StatelessWidget {
  final String? deliveryImg,deliverryAddress;
  CustomRowAddress({this.deliveryImg,this.deliverryAddress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(deliveryImg.toString())
              )
            ),),
          SizedBox(width: 20,),
          CustomText(title: deliverryAddress,size: 16,fw: FontWeight.bold,lt: 1,)

        ],
      ),
    );
  }
}
