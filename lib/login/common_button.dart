
import 'package:biddabd/login/tap_effect.dart';
import 'package:biddabd/login/text_styles.dart';
import 'package:flutter/material.dart';


class CommonButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final String? buttonText;
  final Widget? buttonTextWidget;
  final Color? textColor, backgroundColor;
  final bool? isClickable;
  final double radius;
  const CommonButton({
    Key? key,
    this.onTap,
    this.buttonText,
    this.buttonTextWidget,
    this.textColor: Colors.white,
    this.backgroundColor,
    this.padding,
    this.isClickable = true,
    this.radius = 30, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(),
      child: TapEffect(
        isClickable: isClickable!,
        onClick: onTap ?? () {},
        child: SizedBox(
          height: 70,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side:  BorderSide(color: Color(0xff2d368e)),
            ),
            color: Color(0xffffffff),
            shadowColor: Colors.blueAccent.withOpacity(
              Theme.of(context).brightness == Brightness.dark ? 3 : 1,
            ),
            child: Center(
              child: buttonTextWidget ??
                  Text(
                    buttonText ?? "",
                    style: TextStyles(context).getRegularStyle().copyWith(
                          color: Color(0xff665CBA),
                          fontSize: 18,
                        ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
