import 'package:biddabd/Data/lecture.dart';
import 'package:flutter/material.dart';

class Subject{
  final String? subName;
  final String? subImg;
  final Color? color;
  final List<Lecture>? lecture;
  Subject(this.subName,this.subImg,this.lecture,this.color);

  static List<Subject> getSubject(){
    return[
      // Subject("Bangla","images/bangla.png",[lb1,lb2,lb3,]),
      // Subject("English","images/english.png",[le1]),
      // Subject("General Math","images/bangla.png",[lm1]),
      // Subject("Science","images/science.png",[ls1,ls2]),
      // Subject("Exam Preparation", "images/ssc.png",[let] )

    ];
  }
}

final bangla= Subject("Bangla", "Images/academic/chemistry.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7] ,Color(0xFFD9EEFE));
final english= Subject("English For Today", "Images/academic/biology.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7] ,Color(0xFFD9EEFE));
final  math= Subject("General Math", "Images/academic/mathmatics.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7] ,Color(0xFFD9EEFE));
final science= Subject("General Science", "Images/academic/chemistry.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7] ,Color(0xFFD9EEFE));
final social= Subject("Bangladesh & Global Studies", "Images/academic/biology.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7] ,Color(0xFFD9EEFE));
final  islam= Subject("Religious Islam", "Images/academic/mathmatics.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7] ,Color(0xFFD9EEFE));


final math1st =Subject("Mathematics 1st paper", "Images/academic/mathmatics.png",
        [ls1,ls2,ls3,ls4,ls5,ls6,ls7],Color(0xFFD9EEFE));
    final math2nd =Subject("Mathematics 2nd paper","Images/academic/mathmatics.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
        Color(0xFFD9EEFE));
    final chemistry1st =Subject("Chemistry 1st paper","Images/academic/chemistry.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
        Color(0xFFFFEDE1));
final chemistry2nd =Subject("Chemistry 2nd paper","Images/academic/chemistry.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
        Color(0xFFFFEDE1));
final physics1st =Subject("Physics 1st paper","Images/academic/physics.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
        Color(0xFFF2DDF8));
final physics2nd =Subject("Physics 2nd paper","Images/academic/physics.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
        Color(0xFFF2DDF8));
final biology1st =Subject("Biology 1st paper","Images/academic/biology.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
        Color(0xFFE2F2E2));
final biology2nd =Subject("Biology 2nd paper","Images/academic/biology.png",[ls1,ls2,ls3,ls4,ls5,ls6,ls7],
      Color(0xFFE2F2E2));