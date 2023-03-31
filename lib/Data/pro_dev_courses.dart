class ProDevCourses{
  final String? proTitle;
  final String? proImage;
  ProDevCourses({this.proTitle,this.proImage});
  static List<ProDevCourses> getPro(){
    return [
      ProDevCourses(proTitle: "Bank Job Courses",proImage: "Images/bank_job.png"),
      ProDevCourses(proTitle: "BCS Questions",proImage: "Images/bcs.png"),
      ProDevCourses(proTitle: "IT Job",proImage: "Images/it_jobs.jpg"),
      ProDevCourses(proTitle: "Dancing",proImage: "Images/dancing.png"),
      ProDevCourses(proTitle: "Web Design & Development",proImage: "Images/web_design.png"),
      ProDevCourses(proTitle: "Mobile App Development",proImage: "Images/mobile_development.png"),
      ProDevCourses(proTitle: "Drawing ",proImage: "Images/drawing.png"),
      ProDevCourses(proTitle: "Facebook Marketing",proImage: "Images/facebook_marketing.png")
    ];

  }
}
