///hyperlinkException can be thrown by Hyperlink
class HyperlinkException implements Exception {

  ///Need to pass msg in constructor
  HyperlinkException({ required this.msg});

  ///message of the exception
  String msg;
}
