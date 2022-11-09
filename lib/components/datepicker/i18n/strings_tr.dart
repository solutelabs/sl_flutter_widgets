part of 'date_picker_i18n.dart';

/// Turkish (TR)
class _StringsTr extends _StringsI18n {
  const _StringsTr();

  @override
  String getCancelText() => 'İptal';

  @override
  String getDoneText() => 'Tamam';

  @override
  List<String> getMonths() => <String>[
      'Ocak',
      'Şubat',
      'Mart',
      'Nisan',
      'Mayıs',
      'Haziran',
      'Temmuz',
      'Ağustos',
      'Eylül',
      'Ekim',
      'Kasım',
      'Aralık'
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'Pazartesi',
      'Salı',
      'Çarşamba',
      'Perşembe',
      'Cuma',
      'Cumartesi',
      'Pazar',
    ];

  @override
  List<String> getWeeksShort() =><String> [
      'Pzt',
      'Sal',
      'Çar',
      'Per',
      'Cum',
      'Cmt',
      'Paz',
    ];
}
