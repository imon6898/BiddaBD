
import 'package:biddabd/pages/Homepages/first_page.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:biddabd/profile/my_course.dart';
import 'package:biddabd/welcome/welcomepage.dart';
import 'package:flutter/material.dart';

import 'pages/Homepages/courses/My Course/my_courses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  welcomepage() ,
    );
  }
}