part of 'date_picker_i18n.dart';

/// Hebrew (HE)
class _StringsHe extends _StringsI18n {
  const _StringsHe();

  @override
  String getCancelText() => 'ביטול';

  @override
  String getDoneText() => 'אישור';

  @override
  List<String> getMonths() =><String> [
      'ינואר',
      'פברואר',
      'מרץ',
      'אפריל',
      'מאי',
      'יוני',
      'יולי',
      'אוגוסט',
      'ספמטבר',
      'אוקטובר',
      'נובמבר',
      'דצמבר'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'שני',
      'שלישי',
      'רביעי',
      'חמישי',
      'שישי',
      'שבת',
      'ראשון',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'Mon',
      'Tue',
      'Wed',
      'Thur',
      'Fri',
      'Sat',
      'Sun',
    ];
}
