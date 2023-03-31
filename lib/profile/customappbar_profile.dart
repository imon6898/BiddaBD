import 'package:biddabd/profile/my_profile.dart';
import 'package:flutter/material.dart';

class CustomappbarProfile extends StatelessWidget {

  final String? title;

  const CustomappbarProfile({this.title});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        backgroundColor: Color(0xff2d368e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Text(title!),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ), onPressed: () { Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyProfile()),
        ); },
        ),
      ),
    );
  }
}
