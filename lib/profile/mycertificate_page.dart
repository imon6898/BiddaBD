import 'package:biddabd/profile/customappbar_profile.dart';
import 'package:flutter/material.dart';

class MyCertificete extends StatefulWidget {
  const MyCertificete({Key? key}) : super(key: key);

  @override
  State<MyCertificete> createState() => _MyCertificeteState();
}

class _MyCertificeteState extends State<MyCertificete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: CustomappbarProfile(
            title: "My Certificete",
          )
      ),
      body: SingleChildScrollView(
          child: Container(
        width:  double.infinity,
            constraints: BoxConstraints(
              maxHeight: double.infinity,
            ),
        decoration:  const BoxDecoration(
          color:  Color(0xffffffff),
        ),
        child:Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 215, 0),
                child: Text('Certificate(0)',
                  style: TextStyle(fontSize: 22,),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Color(0xffeeeeee),
                child:
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'Images/asset/people.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Professional Graphic\nDesign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '01/01/2023',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('PDF',textAlign:  TextAlign.center,),

                          ),
                          SizedBox(width: 20),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('Image',textAlign:  TextAlign.center,),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Color(0xffeeeeee),
                child:
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'Images/asset/people.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Professional Graphic\nDesign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '01/01/2023',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('PDF',textAlign:  TextAlign.center,),

                          ),
                          SizedBox(width: 20),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('Image',textAlign:  TextAlign.center,),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Color(0xffeeeeee),
                child:
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'Images/asset/people.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Professional Graphic\nDesign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '01/01/2023',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('PDF',textAlign:  TextAlign.center,),

                          ),
                          SizedBox(width: 20),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('Image',textAlign:  TextAlign.center,),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Color(0xffeeeeee),
                child:
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'Images/asset/people.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Professional Graphic\nDesign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '01/01/2023',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('PDF',textAlign:  TextAlign.center,),

                          ),
                          SizedBox(width: 20),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('Image',textAlign:  TextAlign.center,),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Color(0xffeeeeee),
                child:
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'Images/asset/people.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Professional Graphic\nDesign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '01/01/2023',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('PDF',textAlign:  TextAlign.center,),

                          ),
                          SizedBox(width: 20),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('Image',textAlign:  TextAlign.center,),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Color(0xffeeeeee),
                child:
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'Images/asset/people.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Professional Graphic\nDesign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '01/01/2023',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('PDF',textAlign:  TextAlign.center,),

                          ),
                          SizedBox(width: 20),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              foregroundColor: Color(0xff4f4e4e),
                              elevation: 2,
                              backgroundColor: Color(0xffeeeeee),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_outlined,
                              size: 24.0,
                              color: Color(0xff4f4e4e),
                            ),
                            label: Text('Image',textAlign:  TextAlign.center,),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          )
        );
  }
}
