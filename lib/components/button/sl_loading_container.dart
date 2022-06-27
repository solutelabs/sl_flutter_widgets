import 'package:flutter/material.dart';

/// loading button container
class SlLoadingContainer extends StatelessWidget {
  /// constructor
  const SlLoadingContainer({
    required this.button,
    required this.isLoading,
    required this.color,
    required this.width,
    required this.height,
    Key? key,
  }) : super(
          key: key,
        );

  ///button widget
  final Widget button;

  ///height of loader
  final double height;

  ///width of loader
  final double width;

  ///color of loader
  final Color color;

  /// isLoading
  final bool isLoading;

  @override
  Widget build(
    BuildContext context,
  ) {
    if (!isLoading) {
      return button;
    } else {
      return IgnorePointer(
        ignoring: isLoading,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Opacity(
                    opacity: 0.5,
                    child: button,
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: width,
                height: height,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    color,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
