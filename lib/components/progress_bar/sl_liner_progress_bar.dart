import 'package:flutter/material.dart';

///Easy to use progressbar widget for the project
class SLLinearProgressBar extends StatelessWidget {
  ///Need  to pass parameter for progressbar
  const SLLinearProgressBar({
    Key? key,
    this.backgroundColor,
    this.cornerRadius,
    this.foregroundColor,
    this.height,
    this.percentComplete,
  }) : super(key: key);

  ///Background color of the proggressbar
  final Color? backgroundColor;

  ///forground color of the proggressbar
  final Color? foregroundColor;

  ///current complition percent of the proggressbar
  final double? percentComplete;

  ///height of the proggressbar
  final double? height;

  ///corner radius of the proggressbar
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
