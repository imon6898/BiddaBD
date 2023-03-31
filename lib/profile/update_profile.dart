import 'package:biddabd/profile/customappbar_profile.dart';
import 'package:biddabd/profile/my_profile.dart';
import 'package:flutter/material.dart';
class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: CustomappbarProfile(
          title: "",
        ),
      ),
      body: SingleChildScrollView(
    child: Container(
        width:  double.infinity,
        height:  820,
        decoration:  const BoxDecoration (
          color:  Color(0xffffffff),
        ),
        child:Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 150, 0),
                child: Text(
                  'Update Your Profile',
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.left,
                  //padding: EdgeInsets.all(16.0),
                ),
              ),
              /*Text(
                'Hello World',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
                //padding: EdgeInsets.all(16.0),
              ),*/
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Number',
                    hintText: 'Your Mobile Number',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Email Address',
                    hintText: 'youremail@gmail.com',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Certificate Name',
                    hintText: 'Santa Maria',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // Perform action when button is pressed
                },
                child: Text('Update',style: TextStyle(color: Colors.white, fontSize: 20,)),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xff2d368e), // text color
                  minimumSize: Size(335, 50), // button size
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

