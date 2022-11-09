part of 'date_picker_i18n.dart';

/// Norwegian Nynorsk (NO)
class _StringsNoNn extends _StringsI18n {
  const _StringsNoNn();

  @override
  String getCancelText() => 'Avbryt';

  @override
  String getDoneText() => 'Ferdig';

  @override
  List<String> getMonths() =><String> [
      'Januar',
      'Februar',
      'Mars',
      'April',
      'Mai',
      'Juni',
      'Juli',
      'August',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Måndag',
      'Tysdag',
      'Onsdag',
      'Torsdag',
      'Fredag',
      'Laurdag',
      'Søndag',
    ];

  @override
  List<String> getWeeksShort() => <String>[
      'Mån',
      'Tys',
      'Ons',
      'Tor',
      'Fre',
      'Lau',
      'Søn',
    ];
}
