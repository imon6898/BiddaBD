class LanguageLearningData{
  final String? learnTitle;
  final String? learnImage,learnLink;
  LanguageLearningData({this.learnTitle,this.learnLink,this.learnImage});

  static List<LanguageLearningData> getLearn()=>[
    LanguageLearningData(learnTitle: "IELTS Exam Preparation",
        learnImage: "Images/academic/ielts preparation.jpg",learnLink: "https://youtu.be/gbnS8QRXfp8"),
    LanguageLearningData(learnTitle: "Arabic Learnign",
        learnImage: "Images/academic/arabic.jpg",learnLink: "https://youtu.be/gbnS8QRXfp8"),
    LanguageLearningData(learnTitle: "IELTS Exam Preparation",
        learnImage: "Images/academic/ielts preparation.jpg",learnLink: "https://youtu.be/gbnS8QRXfp8"),
    LanguageLearningData(learnTitle: "Arabic Learnign",
        learnImage: "Images/academic/arabic.jpg",learnLink: "https://youtu.be/gbnS8QRXfp8")

  ];

}