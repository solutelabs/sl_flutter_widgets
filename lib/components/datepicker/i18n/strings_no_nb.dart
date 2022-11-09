part of 'date_picker_i18n.dart';

/// Norwegian Bokmål (NO)
class _StringsNoNb extends _StringsI18n {
  const _StringsNoNb();

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
  List<String> getWeeksFull() =><String> [
      'Mandag',
      'Tirsdag',
      'Onsdag',
      'Torsdag',
      'Fredag',
      'Lørdag',
      'Søndag',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'Man',
      'Tir',
      'Ons',
      'Tor',
      'Fre',
      'Lør',
      'Søn',
    ];
}
