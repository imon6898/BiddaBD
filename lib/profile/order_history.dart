import 'package:biddabd/profile/customappbar_profile.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  final List<String> cardTitles = ['JC-B-384585483313', 'JC-B-384585483313', 'JC-B-384585483313'];
  final List<String> cardDate = [
    '27 Aug 2022, 05:57 PM',
    '27 Aug 2022, 05:57 PM',
    '27 Aug 2022, 05:57 PM',
  ];
  final List<String> cardBalence = [
    '৳35500.0',
    '৳35500.0',
    '৳35500.0',
  ];
  final List<String> cardReceive = [
    'To Receive',
    'To Receive',
    'To Receive',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
    color:  Color(0xffece5e5),
    ),
    child:
    Padding(
    padding: EdgeInsets.all(10),
    child:
    ListView.builder(
      itemCount: cardTitles.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardTitles[index],
                      style: TextStyle(fontSize: 16, color: Color(0xff34a1f5)),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      cardDate[index],
                      style: TextStyle(fontSize: 16.0, color: Color(0xff878787)),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
              padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      cardBalence[index],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                        cardReceive[index],
                        style: TextStyle(fontSize: 14,color:Color(0xffcd113b)),
                      ),
                  ],
                ),
              ),

            ],
          )

        );
      },
    ),
    ),

    ),
      );
  }
}
