part of 'date_picker_i18n.dart';

/// Russian (RU)
class _StringsRu extends _StringsI18n {
  const _StringsRu();

  @override
  String getCancelText() => 'Отмена';

  @override
  String getDoneText() => 'Готово';

  @override
  List<String> getMonths() => <String>[
      'Январь',
      'Февраль',
      'Март',
      'Апрель',
      'Май',
      'Июнь',
      'Июль',
      'Август',
      'Сентябрь',
      'Октябрь',
      'Ноябрь',
      'Декабрь',
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Понедельник',
      'Вторник',
      'Среда',
      'Четверг',
      'Пятница',
      'Суббота',
      'Воскресенье',
    ];

  @override
  List<String> getWeeksShort() => <String>[
      'пн',
      'вт',
      'ср',
      'чт',
      'пт',
      'сб',
      'вс',
    ];
}
