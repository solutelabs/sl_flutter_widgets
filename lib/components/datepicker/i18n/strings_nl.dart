part of 'date_picker_i18n.dart';

/// English (EN) United States
class _StringsNl extends _StringsI18n {
  const _StringsNl();

  @override
  String getCancelText() => 'annuleren';

  @override
  String getDoneText() => 'Gedaan';

  @override
  List<String> getMonths() =><String> [
      'januari-',
      'februari',
      'maart',
      'april',
      'mei',
      'juni-',
      'juli-',
      'augustus',
      'september',
      'oktober',
      'november',
      'december'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'maandag',
      'dinsdag',
      'woensdag',
      'donderdag',
      'vrijdag',
      'zaterdag',
      'zondag',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'maandag',
      'dinsdag',
      'woensdag',
      'donderdag',
      'vrijdag',
      'zaterdag',
      'zondag',
    ];
}
