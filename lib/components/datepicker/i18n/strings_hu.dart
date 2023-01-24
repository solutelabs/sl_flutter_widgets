part of 'date_picker_i18n.dart';

/// Hungarian
class _StringsHu extends _StringsI18n {
  const _StringsHu();

  @override
  String getCancelText() => 'Mégsem';

  @override
  String getDoneText() => 'Mentés';

  @override
  List<String> getMonths() => <String>[
      'Január',
      'Február',
      'Március',
      'Április',
      'Május',
      'Június',
      'Július',
      'Augusztus',
      'Szeptember',
      'Október',
      'November',
      'December'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Hétfő',
      'Kedd',
      'Szerda',
      'Csütörtök',
      'Péntek',
      'Szombat',
      'Vasárnap',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'H',
      'K',
      'Sze',
      'Cs',
      'P',
      'Szo',
      'V',
    ];
}
