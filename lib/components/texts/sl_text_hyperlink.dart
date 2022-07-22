import 'package:flutter/material.dart';
import 'package:sl_flutter_widgets/core/hyperlink_exception.dart';
import 'package:url_launcher/url_launcher.dart';

/// A widget for clickable texts.
class TextHyperlink extends StatelessWidget {
  /// Initializes [TextHyperlink].
  const TextHyperlink({
    required this.label,
    required this.url,
    required this.containerMargin,
    this.style,
    Key? key,
  }) : super(key: key);

  /// Label of the [TextHyperlink].
  final String label;

  /// Url of the [TextHyperlink].
  final String url;

  /// Style of the [TextHyperlink].
  final TextStyle? style;

  /// Margin for parent container [TextHyperlink].
  final double containerMargin;

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Container(
          padding: EdgeInsets.all(containerMargin),
          child: Text(
            label,
            style: style,
          ),
        ),
        onTap: () async {
          if (await canLaunchUrl(Uri.parse(url))) {
            await launchUrl(Uri.parse(url));
          } else {
            throw HyperlinkException(msg: 'Could not launch $url');
          }
        },
      );
}
