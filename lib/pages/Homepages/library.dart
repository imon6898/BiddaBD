import 'package:biddabd/pages/Homepages/library/librarypage.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Card(
        elevation: 3,
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> LibraryPage()));
          },
          child: Container(

            height:size.height*.25,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("Images/academic/library.png"),fit: BoxFit.cover
              )
            ),
          ),
        ),
      ),
    );
  }
}
