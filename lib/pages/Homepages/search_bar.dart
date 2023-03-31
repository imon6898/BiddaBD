import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      height: size.height*0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
            bottomRight:Radius.circular(10) ),
        color: Color(0xFF2D368E),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(height:size.height*0.12,child: CustomTextFieldForm(
          hintTitle: "Search",iconData: Icons.search_outlined,
        )),
      ),

    );
  }
}
