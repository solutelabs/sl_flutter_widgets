part of 'date_picker_i18n.dart';

/// Romanian (RO)
class _StringsRo extends _StringsI18n {
  const _StringsRo();

  @override
  String getCancelText() => 'Anulare';

  @override
  String getDoneText() => 'Ok';

  @override
  List<String> getMonths() => <String>[
      'Ianuarie',
      'Februarie',
      'Martie',
      'Aprilie',
      'Mai',
      'Iunie',
      'Iulie',
      'August',
      'Septembrie',
      'Octombrie',
      'Noiembrie',
      'Decembrie'
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'Luni',
      'Marti',
      'Miercuri',
      'Joi',
      'Vineri',
      'Sambata',
      'Duminica'
    ];

  @override
  List<String>? getWeeksShort() => null;
}
