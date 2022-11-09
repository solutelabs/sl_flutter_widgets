import 'package:flutter/material.dart';
///liner progressbar widget for the app
class SLLinearProgressBar extends StatelessWidget {

  ///initilize the widget
  const SLLinearProgressBar({
    Key? key,
    this.backgroundColor,
    this.cornerRadius,
    this.foregroundColor,
    this.height,
    this.percentComplete,
  }) : super(key: key);///background color of the widget
  final Color? backgroundColor;
  ///forground color of the widget
  final Color? foregroundColor;
  ///percent of the completion
  final double? percentComplete;
  ///height of the widget
  final double? height;
  ///corner radius for the widget
  final double? cornerRadius;

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Container(
            height: height ?? 15,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(cornerRadius ?? 15),
            ),
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: height ?? 15,
              width: (constraints.maxWidth * ((percentComplete ?? 50) / 100))
                  .clamp(cornerRadius ?? 15, constraints.maxWidth)
                  .toDouble(),
              decoration: BoxDecoration(
                color: foregroundColor,
                borderRadius: BorderRadius.circular(cornerRadius ?? 15),
              ),
            ),
          ),
        ],
      );
}
