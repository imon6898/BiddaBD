import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFieldForm extends StatefulWidget {
  final String? hintTitle;
  final IconData? iconData;
  final TextEditingController? controller;

   CustomTextFieldForm({Key? key, this.hintTitle, this.iconData, this.controller}) : super(key: key);

  @override
  State<CustomTextFieldForm> createState() => _CustomTextFieldFormState();
}

class _CustomTextFieldFormState extends State<CustomTextFieldForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(


        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          focusColor: Colors.white,
          suffixIcon: Icon(widget.iconData),
          hintText: widget.hintTitle!,
          focusedBorder: OutlineInputBorder(

            borderSide: BorderSide(
                 color: Colors.blueGrey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          ),
        ),
      ),
    );
  }
}
