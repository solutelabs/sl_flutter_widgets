import 'package:flutter/material.dart';

import 'date_picker_theme.dart';
import 'date_picker_constants.dart';
import 'i18n/date_picker_i18n.dart';
import 'widget/date_picker_widget.dart';

enum DateTimePickerMode {
  /// Display DatePicker
  date,

  /// Display DateTimePicker
  datetime,
}

class DatePicker {
  /// Gets the right [DateTimePickerLocale] by a language string
  ///
  /// languageCode: [languageCode] Locale's String language code
  static DateTimePickerLocale localeFromString(String languageCode) {
    switch (languageCode) {
      case 'zh':
        return DateTimePickerLocale.zh_cn;

      case 'pt':
        return DateTimePickerLocale.pt_br;

      case 'es':
        return DateTimePickerLocale.es;

      case 'ro':
        return DateTimePickerLocale.ro;

      case 'bn':
        return DateTimePickerLocale.bn;

      case 'ar':
        return DateTimePickerLocale.ar;

      case 'jp':
        return DateTimePickerLocale.jp;

      case 'ru':
        return DateTimePickerLocale.ru;

      case 'de':
        return DateTimePickerLocale.de;

      case 'ko':
        return DateTimePickerLocale.ko;

      case 'it':
        return DateTimePickerLocale.it;

      case 'hu':
        return DateTimePickerLocale.hu;

      case 'he':
        return DateTimePickerLocale.he;

      case 'id':
        return DateTimePickerLocale.id;

      case 'tr':
        return DateTimePickerLocale.tr;

      case 'nb':
        return DateTimePickerLocale.no_nb;

      case 'nn':
        return DateTimePickerLocale.no_nn;

      default:
        return DateTimePickerLocale.en_us;
    }
  }

  /// Display date picker in bottom sheet.
  ///
  /// context: [BuildContext]
  /// firstDate: [DateTime] minimum date time
  /// lastDate: [DateTime] maximum date time
  /// initialDateTime: [DateTime] initial date time for selected
  /// dateFormat: [String] date format pattern
  /// locale: [DateTimePickerLocale] internationalization
  /// backgroundColor: [Color] background color of the dialog
  /// itemTextStyle: [TextStyle] item TextStyle of the picker
  /// titleText: [String] text of the dialog's title
  /// confirmText: [String] text of the dialog's confirm button
  /// cancelText: [String] text of the dialog's  cancel button
  static Future<DateTime?> showSimpleDatePicker(BuildContext context,
      {DateTime? firstDate,
      DateTime? lastDate,
      DateTime? initialDate,
      String? dateFormat,
      DateTimePickerLocale locale: DATETIME_PICKER_LOCALE_DEFAULT,
      DateTimePickerMode pickerMode: DateTimePickerMode.date,
      Color? backgroundColor,
      Color? textColor,
      TextStyle? itemTextStyle,
      String? titleText,
      String? confirmText,
      Color? cancelTextColor,
      bool looping: false,
      bool reverse: false,
      double width: 300,
      double height: 300,
      EdgeInsets pickerPadding: EdgeInsets.zero,
      required Function? onConfirmPressed,
      Alignment alignment: Alignment.center}) async {
    DateTime? _selectedDate = initialDate;

    // handle the range of datetime
    if (firstDate == null) {
      firstDate = DateTime.parse(DATE_PICKER_MIN_DATETIME);
    }
    if (lastDate == null) {
      lastDate = DateTime.parse(DATE_PICKER_MAX_DATETIME);
    }

    // handle initial DateTime
    if (initialDate == null) {
      initialDate = DateTime.now();
    }

    if (backgroundColor == null)
      backgroundColor = DateTimePickerTheme.Default.backgroundColor;

    if (textColor == null)
      textColor = DateTimePickerTheme.Default.itemTextStyle.color;

    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(primary: cancelTextColor),
                  child: Text(confirmText ?? "Done"),
                  onPressed: () {
                    onConfirmPressed!();
                    Navigator.pop(context, _selectedDate);
                  },
                ),
                Padding(
                  padding: pickerPadding,
                  child: DatePickerWidget(
                    alignment: alignment,
                    firstDate: firstDate,
                    lastDate: lastDate,
                    initialDate: initialDate,
                    dateFormat: dateFormat,
                    locale: locale,
                    pickerTheme: DateTimePickerTheme(
                      backgroundColor: backgroundColor == null
                          ? Colors.white
                          : backgroundColor,
                      itemTextStyle: itemTextStyle ??
                          TextStyle(
                            color: textColor,
                          ),
                    ),
                    onChange: ((DateTime date, list) {
                      print(date);
                      _selectedDate = date;
                    }),
                    looping: looping,
                  ),
                )
              ],
            ),
          );
        });
    return _selectedDate;
  }
}

class _DatePickerRoute<T> extends PopupRoute<T> {
  _DatePickerRoute({
    this.minDateTime,
    this.maxDateTime,
    this.initialDateTime,
    this.dateFormat,
    this.locale,
    this.pickerMode,
    this.pickerTheme,
    this.onCancel,
    this.onChange,
    this.onConfirm,
    this.theme,
    this.barrierLabel,
    RouteSettings? settings,
  }) : super(settings: settings);

  final DateTime? minDateTime, maxDateTime, initialDateTime;
  final String? dateFormat;
  final DateTimePickerLocale? locale;
  final DateTimePickerMode? pickerMode;
  final DateTimePickerTheme? pickerTheme;
  final VoidCallback? onCancel;
  final DateValueCallback? onChange;
  final DateValueCallback? onConfirm;

  final ThemeData? theme;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);

  @override
  bool get barrierDismissible => true;

  @override
  final String? barrierLabel;

  @override
  Color get barrierColor => Colors.black54;

  AnimationController? _animationController;

  @override
  AnimationController createAnimationController() {
    assert(_animationController == null);
    _animationController =
        BottomSheet.createAnimationController(navigator!.overlay!);
    return _animationController!;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    double height = pickerTheme!.pickerHeight;
    if (pickerTheme!.title != null || pickerTheme!.showTitle) {
      height += pickerTheme!.titleHeight;
    }

    Widget bottomSheet = MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: _DatePickerComponent(route: this, pickerHeight: height),
    );

    if (theme != null) {
      bottomSheet = Theme(data: theme!, child: bottomSheet);
    }
    return bottomSheet;
  }
}

class _DatePickerComponent extends StatelessWidget {
  final _DatePickerRoute route;
  final double _pickerHeight;

  _DatePickerComponent({required this.route, required pickerHeight})
      : this._pickerHeight = pickerHeight;

  @override
  Widget build(BuildContext context) {
    Widget pickerWidget = DatePickerWidget(
      firstDate: route.minDateTime,
      lastDate: route.maxDateTime,
      initialDate: route.initialDateTime,
      dateFormat: route.dateFormat,
      locale: route.locale,
      pickerTheme: route.pickerTheme,
      onCancel: route.onCancel,
      onChange: route.onChange,
      onConfirm: route.onConfirm,
    );
    return GestureDetector(
      child: AnimatedBuilder(
        animation: route.animation!,
        builder: (BuildContext context, Widget? child) {
          return ClipRect(
            child: CustomSingleChildLayout(
              delegate: _BottomPickerLayout(route.animation!.value,
                  contentHeight: _pickerHeight),
              child: pickerWidget,
            ),
          );
        },
      ),
    );
  }
}

class _BottomPickerLayout extends SingleChildLayoutDelegate {
  _BottomPickerLayout(this.progress, {this.contentHeight});

  final double progress;
  final double? contentHeight;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      minWidth: constraints.maxWidth,
      maxWidth: constraints.maxWidth,
      minHeight: 0.0,
      maxHeight: contentHeight!,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double height = size.height - childSize.height * progress;
    return Offset(0.0, height);
  }

  @override
  bool shouldRelayout(_BottomPickerLayout oldDelegate) {
    return progress != oldDelegate.progress;
  }
}
