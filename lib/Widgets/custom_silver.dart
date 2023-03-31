import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSilver extends StatelessWidget {
  final IconData? iconDataled;
  final IconData? iconDatatit;
  final IconData? iconDataact;
  final String? title;
  final String? rightTitle;
  final VoidCallback? onpress;
  CustomSilver({this.iconDataled,this.title,this.iconDataact,this.iconDatatit, this.onpress,this.rightTitle});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32))),
        expandedHeight: size.height*.1 ,
          snap: true,
          pinned: false,
          floating: true,

          flexibleSpace: FlexibleSpaceBar(
          ), //FlexibleSpaceBar
          backgroundColor: Color(0xFF2D368E),
          leading: IconButton(onPressed: onpress, icon: Icon(iconDataled,color: Colors.white,),),
          title: Row(
            children: [
              CustomText(title: title,size: 16,fw: FontWeight.w700,color: Colors.white,),
              Spacer(),
              title=="Cart"?CustomText(title: rightTitle,size: 18,):
              Icon(Icons.shopping_cart_outlined,size: 25,)
            ],
          ),
          actions: [title=="Cart"?Icon(Icons.delete_outline,size: 25,):
          Icon(Icons.notifications_none_outlined,size: 25,)]
        //<Widget>[]

    );
  }
}
