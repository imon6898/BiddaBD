class LibraryData{
  final String? nameLib;
  final String? imgLib;
  final String? writerLib;
  final int? normalPrice;
  final int? discountPrice;

  LibraryData({this.nameLib,this.imgLib,this.writerLib,this.normalPrice,this.discountPrice});
  static List<LibraryData> getLibrary(){
    return[
      LibraryData(nameLib: 'Facebook Marketing & Digital Content W..',
        imgLib:'Images/library/Facebook Marketing1.png',
        writerLib: "AH Tito",normalPrice: 350,discountPrice: 300,

      ),
      LibraryData(nameLib: 'Milk and Honey',
        imgLib:'Images/library/Milk and Honey.png',
        writerLib: "Roman Khondakar",discountPrice: 275,

      ),
      LibraryData(nameLib: 'Facebook Marketing & Digital Content W..',
        imgLib:'Images/library/Facebook Marketing2.png',
        writerLib: "AH Tito",normalPrice: 350,discountPrice: 300,

      ),
      LibraryData(nameLib: 'Web Design',
        imgLib:'Images/library/Web Design1.png',
        writerLib: "Roman Khondakar",discountPrice: 275,

      ),
      LibraryData(nameLib: 'Facebook Marketing & Digital Content W..',
        imgLib:'Images/library/Facebook Marketing3.png',
        writerLib: "AH Tito",normalPrice: 350,discountPrice: 300,

      ),
      LibraryData(nameLib: 'Web Design',
        imgLib:'Images/library/Web Design2.png',
        writerLib: "Roman Khondakar",discountPrice: 275,

      ),


    ];
  }


}
