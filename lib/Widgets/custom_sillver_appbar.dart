import 'package:biddabd/Widgets/custom_text.dart';
//import 'package:biddabd/Widgets/flutter_pofile_picture.dart';
import 'package:flutter/material.dart';

class CustomSilverAppbar extends StatelessWidget {
  const CustomSilverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        snap: false,
        pinned: true,
        floating: true,
        flexibleSpace: FlexibleSpaceBar(
          //Text
          //Images.network
        ), //FlexibleSpaceBar
        backgroundColor: Color(0xFF2D368E),
        leading: Padding(
          padding: const EdgeInsets.all(6.5),
          child: CircleAvatar(
            radius: 200,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('Images/profile.jpg'),
              backgroundColor: Colors.cyan,
              child: Align(alignment: Alignment.bottomRight,

              ),
            ),
          ),
        ),
        title: Row(
          children: [
            Column(children: [
              CustomText(title: "Hay,Kawser",size: 20,fw: FontWeight.w700,color: Colors.white,),
              SizedBox(height: 5,),
              CustomText(title: "Let's Start learning",size: 16,fw:FontWeight.w400,color: Colors.white,)
            ],),
            Spacer(),
            Icon(Icons.shopping_cart_outlined,size: 30,)
          ],
        ),
        actions: [Icon(Icons.notifications_none_outlined,size: 30,)]
      //<Widget>[]
    ) ;
  }
}
