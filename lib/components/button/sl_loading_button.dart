import 'package:flutter/material.dart';
import 'package:sl_flutter_widgets/colors/sl_color.dart';
import 'package:sl_flutter_widgets/components/button/sl_button.dart';
import 'package:sl_flutter_widgets/components/button/sl_loading_container.dart';
///it will provide button with loading indicator
class SlLoadingButton extends StatelessWidget {
  ///initilize the button
  const SlLoadingButton({
    required this.text,
    required this.onTap,
    required this.isLoading,    required this.loaderColor,
    this.loaderHeight = 24,
    this.loaderWidth = 24,

    this.textStyle,
    this.borderColor = SLColors.white,
    this.backgroundColor = SLColors.white,
    this.borderRadius = 6,
    this.height = 42,
    this.width = double.infinity,
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

  ///height of the button
  final double width;

  ///height of the loader
  final double loaderHeight;

  ///width of the loader
  final double loaderWidth;

  /// color of loader
  final Color loaderColor;

  /// isLoading
  final bool isLoading;

  ///padding of the button
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => SlLoadingContainer(
        button: SlButton(
          text:isLoading ? '': text,
          onTap: onTap,
          backgroundColor: backgroundColor,
          borderColor: borderColor,
          borderRadius: borderRadius,
          height: height,
          padding: padding,
          textStyle: textStyle,
          width: width,
        ),
        isLoading: isLoading,
        color: loaderColor,
        height: loaderHeight,
        width: loaderWidth,
      );
}
