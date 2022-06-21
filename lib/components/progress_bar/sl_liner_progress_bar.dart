import 'package:flutter/material.dart';

class SLLinearProgressBar extends StatelessWidget {
  const SLLinearProgressBar({
    Key? key,
    this.backgroundColor,
    this.cornerRadius,
    this.foregroundColor,
    this.height,
    this.percentComplete,
  }) : super(key: key);

  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? percentComplete;
  final double? height;
  final double? cornerRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height ?? 15,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(cornerRadius ?? 15),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: height ?? 15,
              width: (constraints.maxWidth * ((percentComplete ?? 50) / 100))
                  .clamp(cornerRadius ?? 15, constraints.maxWidth)
                  .toDouble(),
              decoration: BoxDecoration(
                color: foregroundColor,
                borderRadius: BorderRadius.circular(cornerRadius ?? 15),
              ),
            );
          },
        ),
      ],
    );
  }
}
