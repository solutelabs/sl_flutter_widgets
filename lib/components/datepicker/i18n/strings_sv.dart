part of 'date_picker_i18n.dart';

/// Swedish (SV)
class _StringsSv extends _StringsI18n {
  const _StringsSv();

  @override
  String getCancelText() => 'Avbryt';

  @override
  String getDoneText() => 'Klar';

  @override
  List<String> getMonths() =><String> [
      'Januari',
      'Februari',
      'Mars',
      'April',
      'Maj',
      'Juni',
      'Juli',
      'Augusti',
      'September',
      'Oktober',
      'November',
      'December'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Måndag',
      'Tisdag',
      'Onsdag',
      'Torsdag',
      'Fredag',
      'Lördag',
      'Söndag',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'Mån',
      'Tis',
      'Ons',
      'Tor',
      'Fre',
      'Lör',
      'Sön',
    ];
}
