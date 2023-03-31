
import 'package:biddabd/login/text_styles.dart';
import 'package:flutter/material.dart';


class CommonTextFieldViewOne extends StatelessWidget {
  final String? titleText;
  final String hintText;
  final String? errorText;
  final bool isObscureText, isAllowTopTitleView;
  final EdgeInsetsGeometry padding;
  final Function(String)? onChanged;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  const CommonTextFieldViewOne({
    Key? key,
    this.hintText = '',
    this.isObscureText = false,
    this.padding = const EdgeInsets.only(),
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.isAllowTopTitleView = true,
    this.errorText,
    this.titleText = '',
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isAllowTopTitleView && titleText != '')
            Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
              child: Text(
                titleText ?? "",
                style: TextStyles(context).getDescriptionStyle(),
              ),
            ),
          Card(
            shape: RoundedRectangleBorder(
              side:  BorderSide(color: Color(0xff2d368e)),
              borderRadius: BorderRadius.circular(5),
            ),
            shadowColor: Colors.black12.withOpacity(
              Theme.of(context).brightness == Brightness.dark ? 2 : 1,
            ),

            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 16),
              child: SizedBox(
                height: 48,
                child: Center(
                  child: TextField(
                    controller: controller,
                    maxLines: 1,
                    onChanged: onChanged,
                    style: TextStyles(context).getRegularStyle(),
                    obscureText: isObscureText,
                    cursorColor: Theme.of(context).primaryColor,
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    },/*Positioned(
                    left: 30,
                    top: 100,
                    child: Container(
                      // autogroupjp6f3rf (KmhNaXCQyr3tV463uQjP6F)
                      margin:  EdgeInsets.fromLTRB(16, 0, 16, 25),
                      padding:  EdgeInsets.fromLTRB(0, 0, 172, 0),
                      width:  100,
                      height: 100,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xff2d368e)),
                        borderRadius:  BorderRadius.circular(5),
                      ),
                    ),
                  ),*/
                    decoration: new InputDecoration(
                      icon: Image.asset("Images/images/signin4.png"),
                      errorText: null,
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle:
                          TextStyle(color: Color(0xfd9a8383)),
                    ),
                    keyboardType: keyboardType,
                  ),
                ),
              ),
            ),
          ),
          if (errorText != null && errorText != '')
            Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
              child: Text(
                errorText ?? "",
                style: TextStyles(context).getDescriptionStyle().copyWith(
                      color: Color(0xffEF4545),
                    ),
              ),
            )
        ],
      ),
    );
  }
}
