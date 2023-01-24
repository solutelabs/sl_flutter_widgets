part of 'date_picker_i18n.dart';

/// Arabic (AR)
class _StringsAr extends _StringsI18n {
  const _StringsAr();

  @override
  String getCancelText() => 'ألغاء';

  @override
  String getDoneText() => 'تم';

  @override
  List<String> getMonths() =><String> [
      'كانون الثاني',
      'شباط',
      'آذار',
      'نيسان',
      'أيار',
      'حزيران',
      'تموز',
      'آب',
      'أيلول',
      'تشرين الأول',
      'تشرين الثاني',
      'كانون الأول'
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'الأثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعه',
      'السبت',
      'الأحد',
    ];

  @override
  List<String>? getWeeksShort() => null;
}
