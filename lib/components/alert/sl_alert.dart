import 'package:flutter/material.dart';

///A popup alert dialog widget that pops up at the centre of a page and overlays
/// over its contents.
class SLAlert extends StatefulWidget {
  /// Creates a popup alert dialog that takes place at the centre of the screen
  ///
  /// The [title] of the dialog is displayed at the top of the dialog. If this
  /// value is null, the title will be ignored.
  /// The [content] of the dialog is displayed below the title of the dialog. If
  /// the title is null, [content] will be at the top of the dialog. If this
  /// value is null, the content will be ignored.
  /// [positiveButtonLabel] is the label of the action button at the most right
  /// of the dialog. [onPositiveActionPressed] is called when this button is
  /// clicked.
  ///
  /// [negativeButtonLabel] is the label of the second action button.
  /// [onNegativeActionPressed] is called when this button is clicked.
  ///
  /// All arguments are optional.
  ///
  const SLAlert({
    this.titleTextStyle,
    this.navigationButtonLabelTextStyle,
    this.title,
    this.content,
    this.positiveButtonLabel,
    this.negativeButtonLabel,
    this.onPositiveActionPressed,
    this.onNegativeActionPressed,
    this.positiveButtonLabelTextStyle,
    this.backgroundColor,
    this.onlyPositiveButtonCenter,
    Key? key,
  }) : super(key: key);

  /// The title of the popup alert dialog.
  final String? title;

  /// The content of the popup alert dialog.
  final Widget? content;

  /// The label of the popup alert dialog positive action button.
  final String? positiveButtonLabel;

  /// The label of the popup alert dialog negative action button.
  final String? negativeButtonLabel;

  /// [onPositiveActionPressed] callback
  ///
  /// This callback will be called when the positive action button is visible
  /// on the screen and was tapped.
  final VoidCallback? onPositiveActionPressed;

  /// [onNegativeActionPressed] callback
  ///
  /// This callback will be called when the negative action button is visible
  /// on the screen and was tapped.
  final VoidCallback? onNegativeActionPressed;

  /// TextStyle for title
  final TextStyle? titleTextStyle;

  /// TextStyle for Navigation button text label
  final TextStyle? navigationButtonLabelTextStyle;

  /// TextStyle for Positive button text label
  final TextStyle? positiveButtonLabelTextStyle;

  /// Background color of parent container
  final Color? backgroundColor;
///true if want to position button at center
  final bool? onlyPositiveButtonCenter;

  @override
  _SLAlertState createState() => _SLAlertState();
}

class _SLAlertState extends State<SLAlert> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        backgroundColor: widget.backgroundColor,
        title: widget.title == null
            ? null
            : Text(
                widget.title!,
                style: widget.titleTextStyle,
              ),
        content: widget.content == null
            ? null
            : Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  widget.content ?? const SizedBox.shrink(),
                ],
              ),
        actions: <Widget>[
          if (widget.onlyPositiveButtonCenter == true)
            Center(
              child: TextButton(
                child: Text(
                  widget.positiveButtonLabel!,
                  style: widget.positiveButtonLabelTextStyle,
                ),
                onPressed: widget.onPositiveActionPressed,
              ),
            ),
          if (widget.positiveButtonLabel != null &&
              widget.onlyPositiveButtonCenter == false)
            TextButton(
              child: Text(
                widget.positiveButtonLabel!,
                style: widget.positiveButtonLabelTextStyle,
              ),
              onPressed: widget.onPositiveActionPressed,
            ),
          if (widget.negativeButtonLabel != null &&
              widget.onlyPositiveButtonCenter == false)
            TextButton(
              child: Text(
                widget.negativeButtonLabel!,
                style: widget.navigationButtonLabelTextStyle,
              ),
              onPressed: widget.onNegativeActionPressed,
            ),
        ],
      );
}
