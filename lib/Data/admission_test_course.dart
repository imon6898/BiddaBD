class AdmissionTestCourse{
  final String? addsTitle;
  final String? addsImg;
  AdmissionTestCourse({this.addsTitle,this.addsImg});
  static List<AdmissionTestCourse> getAdmsn(){
    return [
      AdmissionTestCourse(addsTitle: "Medical",addsImg: "Images/medical.jpg"),
      AdmissionTestCourse(addsTitle: "University",addsImg: "Images/university.jpg"),
      AdmissionTestCourse(addsTitle: "Engineering",addsImg: "Images/engineering.jpg"),
    ];
  }
}
