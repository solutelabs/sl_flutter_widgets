part of 'date_picker_i18n.dart';

/// German (DE)
class _StringsDe extends _StringsI18n {
  const _StringsDe();

  @override
  String getCancelText() => 'Abbrechen';

  @override
  String getDoneText() => 'Fertig';

  @override
  List<String> getMonths() => <String>[
      'Januar',
      'Februar',
      'März',
      'April',
      'Mai',
      'Juni',
      'Juli',
      'August',
      'September',
      'Oktober',
      'November',
      'Dezember',
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'Montag',
      'Dienstag',
      'Mittwoch',
      'Donnerstag',
      'Freitag',
      'Samstag',
      'Sonntag',
    ];

  @override
  List<String> getWeeksShort() => <String>[
      'Mo',
      'Di',
      'Mi',
      'Do',
      'Fr',
      'Sa',
      'So',
    ];
}
