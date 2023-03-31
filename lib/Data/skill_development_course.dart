class SkillDevelopmentCourse{
  final String? skillTitle;
  final String? skillImage,skillLink;
  SkillDevelopmentCourse({this.skillTitle,this.skillImage,this.skillLink});
  static List<SkillDevelopmentCourse> getSkill(){
    return [
          SkillDevelopmentCourse(skillTitle: "Professional Graphic Design",
              skillImage: "Images/professional_grpahics.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Professional UX/UI Design",
              skillImage: "Images/professional_ui.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Mobile App Development",
              skillImage: "Images/mobile_development.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Dancing",
              skillImage: "Images/dancing.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Web Design & Development",
              skillImage: "Images/web_design.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Mobile App Development",
              skillImage: "Images/mobile_development.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Drawing ",
              skillImage: "Images/drawing.png",skillLink: "https://youtu.be/gbnS8QRXfp8"),
          SkillDevelopmentCourse(skillTitle: "Facebook Marketing",
              skillImage: "Images/facebook_marketing.png",skillLink: "https://youtu.be/gbnS8QRXfp8")
    ];

  }
}
