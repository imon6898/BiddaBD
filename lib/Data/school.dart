import 'package:biddabd/Data/sub_division.dart';
import 'package:biddabd/Data/modal_course.dart';
import 'package:flutter/material.dart';

class School{
  final String name;
  final String imgSchool;
  final List<Courses> courses;
  final List<Division>? division;
  final Color? color  ;
  School({required this.name,required this.imgSchool,required this.courses, this.division,this.color});

}
final primary=School(name: "Primary",imgSchool:"images/primary.png",courses: [level1,level2,level3,level4,level5],color: Color(0xFFFFC60B));
final highSchool=School(name: "HighSchool",imgSchool:"images/highschool.png",courses: [level6,level7,level8],color: Colors.lightGreen);
final ssc=School(name: "SSC",imgSchool:"images/ssc.png",courses: [level9,level10,tenth],division: [d1,d2,d3],color: Color(0xFF8E2568));
final hsc=School(name: "HSC",imgSchool:"images/hsc.png",courses: [level11,level12,twelveth],division: [d1,d2,d3],color: Color(0xFFF37421));
final madrasha=School(name: "Madrasha",imgSchool:"images/madrasha.png",courses: [level1,level2,level3,level4,level5,level6,level7,level8],color: Color(0xFF00A8DE));
final admissiontest=School(name: "admission",imgSchool:"images/admission.png",courses: [medical,enginnering,unit_a,unit_b,unit_c,unit_d],color: Color(0xFFDE2727));
final job=School(name: "Job",imgSchool:"images/job.png",courses: [bsc,bankJob,govJob,itJob],color: Color(0xFF21374C));
final skill=School(name: "Skill",imgSchool:"images/skill.png",courses: [arabic,dancing,drawing,cooking,it],color: Color(0xFFEC008C));
final ict=School(name: "Ict Training", imgSchool:"images/ict_training.png",courses: [level9,level10,tenth,level11,level12,twelveth],color: Color(0xFFEFCF4E));
final diplomatic=School(name:"Diploma",imgSchool:"images/diploma.png",courses:[level1,level2,level3,level4],color: Color(0xFF00A8DE));
final sscVoc=School(name:"SSC(voc)", imgSchool:"images/ssc_vocational.png",courses: [level9,level10,tenth],division: [d1,d2,d3],color: Color(0xFF732D40));
final hscVoc=School(name:"HSC(Voc)", imgSchool:"images/hsc_voc.png",courses: [level10,level11,twelveth],division: [d1,d2,d3],color: Color(0xFF981C2F));

final ielts=School(name: "Ielts", imgSchool:"images/ielts.png",courses:[],color: Color(0xFFCA0AF));
final ebtedayee=School(name: "Ebtedayee",imgSchool:"images/ebtedayee.png",courses: [level1,level2,level3,level4,level5],color: Color(0xFF778AC5));
final jdc=School(name: "JDC",imgSchool:"images/jdc.png",courses: [level6,level7,level8],color: Color(0xFFC6E4CC));
final dakhil=School(name: "Dakhil",imgSchool:"images/dakhil.png",courses: [level9,level10,tenth],division: [d1,d2,d3],color: Color(0xFF73BCA1));
final alim=School(name: "Alim",imgSchool:"images/alim.png",courses: [level11,level12,twelveth],division: [d1,d2,d3],color: Color(0xFFCCFF33));
