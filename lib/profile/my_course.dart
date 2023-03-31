import 'package:biddabd/profile/customappbar_profile.dart';
import 'package:flutter/material.dart';

class MyCourse extends StatelessWidget {
  final List<Map<String, dynamic>> _cardData = [
    {'image': 'Images/asset/people.png', 'text': 'Professional Graphic Design', 'progress': 0.5,    },
    {'image': 'Images/asset/people.png', 'text': 'Bank job Course', 'progress': 0.2,    },
    {'image': 'Images/asset/people.png', 'text': 'Professional UX/UIDesign', 'progress': 0.8,    },
    ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 255) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: CustomappbarProfile(
            title: "My Course",
          )
      ),
      body: Container(
        width:  double.infinity,
        constraints: BoxConstraints(maxHeight: double.infinity,),
        decoration:  const BoxDecoration (
          color:  Color(0xffffffff),
        ),
        child:
        Padding(
            padding: EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (itemWidth / itemHeight),
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: _cardData.map((card) {
                return new Container(
                    child:
                    Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[

                    ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          child: SizedBox.fromSize(
                            size: const Size(170,93),
                            child: Image.asset(card['image'],fit: BoxFit.fitWidth),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: double.infinity,
                            height: 40.81,
                            margin: const EdgeInsets.all(5),
                            //color: Colors.red,
                            child: Text(
                              card['text'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        LinearProgressIndicator(value: card['progress'],
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                        SizedBox(height: 12),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(173, 48.50),
                                backgroundColor: Color(0xffe4e6ff),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Continue',style: TextStyle(fontSize: 20, color: Color(0xff2d368e)),),
                            ),
                          ),
                        )

                      ],
                    ),
                    margin: EdgeInsets.all(10),
                  )
                );
              }).toList(),
            )
        ),

      ),
    );
  }
}
