part of 'date_picker_i18n.dart';

/// Lithuanian (LT)
class _StringsLt extends _StringsI18n {
  const _StringsLt();

  @override
  String getCancelText() => 'Atšaukti';

  @override
  String getDoneText() => 'Baigta';

  @override
  List<String> getMonths() =><String> [
      'Sausis',
      'Vasaris',
      'Kovas',
      'Balandis',
      'Gegužė',
      'Birželis',
      'Liepa',
      'Rugpjūtis',
      'Rugsėjis',
      'Spalis',
      'Lapkritis',
      'Gruodis',
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Pirmadienis',
      'Antradienis',
      'Trečiadienis',
      'Ketvirtadienis',
      'Penktadienis',
      'Šeštadienis',
      'Sekmadienis',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'pir',
      'antr',
      'treč',
      'ketv',
      'penkt',
      'šeš',
      'sekm',
    ];
}
