import 'package:biddabd/Data/subject.dart';
import 'package:flutter/material.dart';

class Division{
  final String? name;
  final String? divImg;
  final List<Subject>? subject;
  Division({this.name,this.divImg,this.subject});

  static List<Division> getDivisions(){
    return [

    ];

  }
}


final c1=Division(name: "Class 1",
    divImg: "Images/academic/class1.png",
    subject: [bangla,english,math]
    );
final c2=Division(name: "Class 2",
    divImg: "Images/academic/class2.png",
    subject: [bangla,english,math]
    );
final c3=Division(name: "Class 3",
    divImg: "Images/academic/class3.png",
    subject: [bangla,english,math,science,social,islam]
    );
final c4=Division(name: "Class 4",
    divImg: "Images/academic/class4.png",
    subject: [bangla,english,math,science,social,islam]
    );
final c5=Division(name: "Class 5",
    divImg: "Images/academic/class5.png",
    subject: [bangla,english,math,science,social,islam]
    );
final c6=Division(name: "Class 6",
    divImg: "Images/academic/class6.png",
    subject: [bangla,english,math,science,social,islam]
   );
final c7=Division(name: "Class 7",
    divImg: "Images/academic/class7.png",
    subject: [bangla,english,math,science,social,islam]
    );
final c8=Division(name: "Class 8",
    divImg: "Images/academic/class8.png",  
    subject: [bangla,english,math,science,social,islam]);


final d1= Division(name: "Science",divImg: "Images/academic/science.png",
    subject: [math1st,math2nd,chemistry1st,chemistry2nd,physics1st,physics2nd,biology1st,biology2nd]);
final d2=  Division(name: "Business ",divImg: "Images/academic/business.png",
    subject: [math1st,math2nd,chemistry1st,chemistry2nd,physics1st,physics2nd,biology1st,biology2nd]);
final d3=Division(name: "Arts",divImg: "Images/academic/arts.png",
    subject: [math1st,math2nd,chemistry1st,chemistry2nd,physics1st,physics2nd,biology1st,biology2nd]);