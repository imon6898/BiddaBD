import 'package:biddabd/profile/customappbar_profile.dart';
import 'package:biddabd/profile/my_profile.dart';
import 'package:flutter/material.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
      body:
    SingleChildScrollView(
    child:Container(
      width:  double.infinity,
      height:  700,
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
              padding: EdgeInsets.fromLTRB(15, 0, 110, 0),
              child: Text(
                'Change Your Password',
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
                textAlign: TextAlign.left,
                //padding: EdgeInsets.all(16.0),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Old Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter New Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm New Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
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
              child: Text('Submit',style: TextStyle(color: Colors.white, fontSize: 20,)),
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

