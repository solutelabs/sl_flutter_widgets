part of 'date_picker_i18n.dart';

/// Thai (TH) Thai Land
class _StringsTh extends _StringsI18n {
  const _StringsTh();

  @override
  String getCancelText() => 'ยกเลิก';

  @override
  String getDoneText() => 'ตกลง';

  @override
  List<String> getMonths() =><String> [
      'มกราคม',
      'กุมภาพันธ์',
      'มีนาคม',
      'เมษายน',
      'พฤษภาคม',
      'มิถุนายน',
      'กรกฎาคม',
      'สิงหาคม',
      'กันยายน',
      'ตุลาคม',
      'พฤศจิกายน',
      'ธันวาคม'
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'จันทร์',
      'อังคาร',
      'พุธ',
      'พฤหัสบดี',
      'ศุกร์',
      'เสาร์',
      'อาทิตย์',
    ];

  @override
  List<String> getWeeksShort() => <String>[
      'จ.',
      'อ.',
      'พ.',
      'พฤ.',
      'ศ.',
      'ส.',
      'อา.',
    ];
}
