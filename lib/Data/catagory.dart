import 'package:biddabd/Data/classes.dart';
import 'package:biddabd/Data/school.dart';

class Catagory{
  final String? nameCatagory;
  final String? imgCategory;
  final List<Classes>? classes;
  Catagory({this.nameCatagory,this.imgCategory,this.classes});

  static List<Catagory> getCatagory(){
    return[
      Catagory(nameCatagory: 'General Education',imgCategory:'Images/academic/general_education.png',classes: [classes1,class10,class12]),
      Catagory(nameCatagory: 'Madarasha Board',imgCategory:'Images/academic/madrasha.png', classes: [mad1,mad10,mad12]),
      Catagory(nameCatagory: 'Technical Board', imgCategory:'Images/academic/technical.png', classes: [bteb10,bteb12]),
      //Catagory(nameCatagory: '', imgCategory:'images/professional.png',school: [job,skill,admissiontest,ielts])
    ];
  }
}