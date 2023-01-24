part of 'date_picker_i18n.dart';

/// French (FR)
class _StringsFr extends _StringsI18n {
  const _StringsFr();

  @override
  String getCancelText() => 'Annuler';

  @override
  String getDoneText() => 'Valider';

  @override
  List<String> getMonths() => <String>[
      'Janvier',
      'Février',
      'Mars',
      'Avril',
      'Mai',
      'Juin',
      'Juillet',
      'Août',
      'Septembre',
      'Octobre',
      'Novembre',
      'Décembre'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Lundi',
      'Mardi',
      'Mercredi',
      'Jeudi',
      'Vendredi',
      'Samedi',
      'Dimanche',
    ];

  @override
  List<String>? getWeeksShort() => null;
}
