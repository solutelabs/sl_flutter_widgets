import 'dart:ffi';

import 'package:flutter/material.dart';

///contest for the [SlToast] widget
class SLToastContext {
  ///  Constructor for SLToast
  factory SLToastContext() => _instance;
  SLToastContext._internal();

  ///[BuildContext] of the view
  BuildContext? context;

  static final SLToastContext _instance = SLToastContext._internal();

  /// Take users Context
  SLToastContext init(BuildContext context) {
    _instance.context = context;
    return _instance;
  }
}

/// [SlToast] widget for the app
class SLToast {
  ///length of the short
  static const int lengthShort = 1;

  ///longest lenth
  static const int lengthLong = 3;
  ///bottom const
  static const int bottom = 0;
  ///center const
  static const int center = 1;

  ///top const
  static const int top = 2;
  ///this function will show toast
  static void show(
    SLToastContext context,
    String msg, {
    int? duration = 1,
    int? position = 0,
    Color backgroundColor = const Color(0xAA000000),
    TextStyle textStyle = const TextStyle(fontSize: 15, color: Colors.white),
    double backgroundRadius = 20,
    bool? rootNavigator,
    Border? border,
  }) {
    if (SLToastContext().context == null) {
      throw Exception('Context is null');
    }

    SLToastView.dismiss();
    SLToastView.createView(msg, SLToastContext().context!, duration, position,
        backgroundColor, textStyle, backgroundRadius, border,
        rootNavigator: rootNavigator);
  }
}

///initial
class SLToastView {
  ///initilize the [SLToastView]
  factory SLToastView() => _singleton;
  SLToastView._internal();

  static final SLToastView _singleton = SLToastView._internal();

  ///state of the overlay
  static OverlayState? overlayState;
  static OverlayEntry? _overlayEntry;
  static bool _isVisible = false;

  ///create tpast view
  static Future<void> createView(
      String msg,
      BuildContext context,
      int? duration,
      int? gravity,
      Color background,
      TextStyle textStyle,
      double backgroundRadius,
      Border? border,
      {bool? rootNavigator = false}) async {
    overlayState = Overlay.of(context, rootOverlay: rootNavigator ?? false);

    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => ToastWidget(
          widget: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(backgroundRadius),
                    border: border,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                  child: Text(msg, softWrap: true, style: textStyle),
                )),
          ),
          gravity: gravity),
    );
    _isVisible = true;
    overlayState!.insert(_overlayEntry!);
    await Future<Void>.delayed(
        Duration(seconds: duration ?? SLToast.lengthShort));
    await dismiss();
  }

  ///it will dismiss the toast
  static Future<void> dismiss() async {
    if (!_isVisible) {
      return;
    }
    _isVisible = false;
    _overlayEntry?.remove();
  }
}

///toast widget for the flutter
class ToastWidget extends StatelessWidget {
  ///initilize the toast widget
  const ToastWidget({
    required this.widget,
    required this.gravity,
    Key? key,
  }) : super(key: key);

  ///widget for the toast
  final Widget widget;

  ///gravity of the toast
  final int? gravity;

  @override
  Widget build(BuildContext context) => Positioned(
      top: gravity == 2 ? MediaQuery.of(context).viewInsets.top + 50 : null,
      bottom:
          gravity == 0 ? MediaQuery.of(context).viewInsets.bottom + 50 : null,
      child: IgnorePointer(
        child: Material(
          color: Colors.transparent,
          child: widget,
        ),
      ));
}
