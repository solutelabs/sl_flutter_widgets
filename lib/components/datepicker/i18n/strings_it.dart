part of 'date_picker_i18n.dart';

/// Italian (IT)
class _StringsIt extends _StringsI18n {
  const _StringsIt();

  @override
  String getCancelText() => 'Annulla';

  @override
  String getDoneText() => 'Salva';

  @override
  List<String> getMonths() => <String>[
      'Gennaio',
      'Febbraio',
      'Marzo',
      'Aprile',
      'Maggio',
      'Giugno',
      'Luglio',
      'Agosto',
      'Settembre',
      'Ottobre',
      'Novembre',
      'Dicembre'
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'Lunedì',
      'Martedì',
      'Mercoledì',
      'Giovedì',
      'Venerdì',
      'Sabato',
      'Domenica',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'Lu',
      'Ma',
      'Me',
      'Gi',
      'Ve',
      'Sa',
      'Do',
    ];
}
