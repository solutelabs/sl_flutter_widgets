import 'package:flutter/material.dart';
import 'package:sl_flutter_widgets/colors/sl_color.dart';

class SlButton extends StatelessWidget {
  const SlButton({
    required this.text,
    required this.onTap,
    this.textStyle,
    this.borderColor = SLColors.white,
    this.backgroundColor = SLColors.white,
    this.borderRadius = 6,
    this.height = 42,
    this.padding,
    Key? key,
  }) : super(
          key: key,
        );

  /// text of the button
  final String text;

  /// onClick method of the button
  final VoidCallback onTap;

  /// Border color of the button.By default it will be white.
  final Color borderColor;

  /// Background color of the button.By default it will be white.
  final Color backgroundColor;

  /// textstyle of the button text
  final TextStyle? textStyle;

  /// border radius of the button
  final double borderRadius;

  ///height of the button
  final double height;

  ///padding of the button
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
        child: SizedBox(
          width: double.infinity,
          height: height,
          child: TextButton(
            onPressed: onTap,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius,
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      );
}
