
import 'package:biddabd/Data/sub_division.dart';
import 'package:biddabd/Data/subject.dart';

class Classes{
 final String? name,imgClass,subImg;
 final List<Division>? divison;
 final List<Subject>? subject;
 Classes({this.name,this.imgClass,this.subImg,this.divison,this.subject});

}
final classes1=Classes(name: "Class 1-8",imgClass:"Images/academic/classes.png",
    subImg: "Images/academic/c_c_1.png",divison: [c8,c7,c6,c5,c4,c3,c2,c1]);
final class10=Classes(name: "SSC",imgClass:"Images/academic/ssc.png",
    subImg: "Images/academic/c_c_2.png",divison: [d1,d2,d3]);
final class12=Classes(name: "HSC",imgClass:"Images/academic/hsc.png",
    subImg: "Images/academic/c_c_3.png",divison: [d1,d2,d3]);

final mad1=Classes(name: "Ebtedayee",imgClass:"Images/academic/classes.png",
    subImg: "Images/academic/c_c_1.png",divison: [c8,c7,c6,c5,c4,c3,c2,c1]);
final mad10=Classes(name: "Dakhil",imgClass:"Images/academic/ssc.png",
    subImg: "Images/academic/c_c_2.png",divison: [d1,d2,d3]);
final mad12=Classes(name: "Alim",imgClass:"Images/academic/hsc.png",
    subImg: "Images/academic/c_c_3.png",divison: [d1,d2,d3]);

// final bteb1=Classes(name: "Sample1",imgClass:"Images/academic/classes.png",
//     subImg: "Images/academic/c_c_1.png",divison: [c8,c7,c6,c5,c4,c3,c2,c1]);
final bteb10=Classes(name: "SSC Voc",imgClass:"Images/academic/ssc.png",
    subImg: "Images/academic/c_c_2.png",divison: [d1,d2,d3]);
final bteb12=Classes(name: "HSC Voc",imgClass:"Images/academic/hsc.png",
    subImg: "Images/academic/c_c_3.png",divison: [d1,d2,d3]);