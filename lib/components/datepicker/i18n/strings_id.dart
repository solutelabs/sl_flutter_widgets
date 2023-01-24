part of 'date_picker_i18n.dart';

class _StringsId extends _StringsI18n {
  const _StringsId();

  @override
  String getCancelText() => 'Batal';

  @override
  String getDoneText() => 'Pilih';

  @override
  List<String> getMonths() => <String>[
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

  @override
  List<String> getWeeksFull() => <String>[
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      "Jum'at",
      'Sabtu',
      'Minggu',
    ];

  @override
  List<String> getWeeksShort() => <String>[
      'Sen',
      'Sel',
      'Rab',
      'Kam',
      'Jum',
      'Sab',
      'Min',
    ];
}
