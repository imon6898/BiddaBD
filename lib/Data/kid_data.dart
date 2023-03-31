class KidData{
  final String? kidTitle;
  final String? kidImage,kidLink;
  KidData({this.kidTitle,this.kidImage,this.kidLink});

  static List<KidData> getCourse()=>[

    KidData(kidTitle: "Coding For Kid’s "
        , kidImage: "Images/academic/kid coding.png",kidLink: "https://youtu.be/gbnS8QRXfp8"),
    KidData(kidTitle: "Kid’s Drowing",
        kidImage: "Images/academic/kid drawing.jpg",kidLink: "https://youtu.be/gbnS8QRXfp8"),
    KidData(kidTitle: "Coding For Kid’s "
        , kidImage: "Images/academic/kid coding.png",kidLink: "https://youtu.be/gbnS8QRXfp8"),
    KidData(kidTitle: "Kid’s Drowing",
        kidImage: "Images/academic/kid drawing.jpg",kidLink: "https://youtu.be/gbnS8QRXfp8"),

  ];
}