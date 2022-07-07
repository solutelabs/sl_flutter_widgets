import 'package:flutter/material.dart';

class SLToastContext {
  BuildContext? context;

  static final SLToastContext _instance = SLToastContext._internal();

  ///  Constructor for SLToast
  factory SLToastContext() {
    return _instance;
  }

  /// Take users Context
  SLToastContext init(BuildContext context) {
    _instance.context = context;
    return _instance;
  }

  SLToastContext._internal();
}

class SLToast {
  static const int lengthShort = 1;
  static const int lengthLong = 3;
  static const int bottom = 0;
  static const int center = 1;
  static const int top = 2;
  static void show(
    SLToastContext context,
    String msg, {
    int? duration = 1,
    int? position = 0,
    Color backgroundColor = const Color(0xAA000000),
    textStyle = const TextStyle(fontSize: 15, color: Colors.white),
    double backgroundRadius = 20,
    bool? rootNavigator,
    Border? border,
  }) {
    if (SLToastContext().context == null) {
      throw Exception('Context is null');
    }

    SLToastView.dismiss();
    SLToastView.createView(msg, SLToastContext().context!, duration, position,
        backgroundColor, textStyle, backgroundRadius, border, rootNavigator);
  }
}

class SLToastView {
  static final SLToastView _singleton = SLToastView._internal();

  factory SLToastView() {
    return _singleton;
  }

  SLToastView._internal();

  static OverlayState? overlayState;
  static OverlayEntry? _overlayEntry;
  static bool _isVisible = false;

  static void createView(
      String msg,
      BuildContext context,
      int? duration,
      int? gravity,
      Color background,
      TextStyle textStyle,
      double backgroundRadius,
      Border? border,
      bool? rootNavigator) async {
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
    await Future.delayed(Duration(seconds: duration ?? SLToast.lengthShort));
    dismiss();
  }

  static dismiss() async {
    if (!_isVisible) {
      return;
    }
    _isVisible = false;
    _overlayEntry?.remove();
  }
}

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    Key? key,
    required this.widget,
    required this.gravity,
  }) : super(key: key);

  final Widget widget;
  final int? gravity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
}
