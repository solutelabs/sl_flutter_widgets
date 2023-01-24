// ignore_for_file: constant_identifier_names
///ingnoring becuase there might some old project that are using this package,
///and we dont want tp effect there current build 

import 'dart:math';

part 'strings_ar.dart';

part 'strings_bn.dart';

part 'strings_de.dart';

part 'strings_en_us.dart';

part 'strings_es.dart';

part 'strings_he.dart';

part 'strings_hu.dart';

part 'strings_id.dart';

part 'strings_it.dart';

part 'strings_jp.dart';

part 'strings_ko.dart';

part 'strings_no_nb.dart';

part 'strings_no_nn.dart';

part 'strings_pt_br.dart';

part 'strings_ro.dart';

part 'strings_ru.dart';

part 'strings_tr.dart';

part 'strings_zh_cn.dart';

part 'strings_fr.dart';

part 'strings_th.dart';

part 'strings_lt.dart';

part 'strings_nl.dart';

part 'strings_ht.dart';

part 'strings_sv.dart';

abstract class _StringsI18n {
  const _StringsI18n();

  /// Get the done widget text
  String getDoneText();

  /// Get the cancel widget text
  String getCancelText();

  /// Get the name of month
  List<String> getMonths();

  /// Get the full name of week
  List<String> getWeeksFull();

  /// Get the short name of week
  List<String>? getWeeksShort();
}

///local for the [DateTimePcker]
enum DateTimePickerLocale {
  /// English (EN) United States
  en_us,

  /// Chinese (ZH) Simplified
  zh_cn,

  /// Portuguese (PT) Brazil
  pt_br,

  /// Spanish (ES)
  es,

  /// Romanian (RO)
  ro,

  /// Bengali (BN)
  bn,

  /// Arabic (AR)
  ar,

  /// Japanese (JP)
  jp,

  /// Russian (RU)
  ru,

  /// German (DE)
  de,

  /// Korea (KO)
  ko,

  /// Italian (IT)
  it,

  /// Hungarian (HU)
  hu,

  /// Hebrew (HE)
  he,

  /// Indonesian (ID)
  id,

  /// Turkish (TR)
  tr,

  /// Norwegian Bokmål (NO)
  no_nb,

  /// Norwegian Nynorsk (NO)
  no_nn,

  /// French (FR)
  fr,

  /// Thai (TH)
  th,

  /// Lithuaniana (LT)
  lt,

  /// Dutch (NL)
  nl,

  /// Haitian Creole (HT)
  ht,

  /// Swedish (SV)
  sv,
}

/// Default value of date locale
const DateTimePickerLocale DATETIME_PICKER_LOCALE_DEFAULT =
    DateTimePickerLocale.en_us;

///datepicker localization map
const Map<DateTimePickerLocale, _StringsI18n> datePickerI18n =
    <DateTimePickerLocale, _StringsI18n>{
  DateTimePickerLocale.en_us: _StringsEnUs(),
  DateTimePickerLocale.zh_cn: _StringsZhCn(),
  DateTimePickerLocale.pt_br: _StringsPtBr(),
  DateTimePickerLocale.es: _StringsEs(),
  DateTimePickerLocale.ro: _StringsRo(),
  DateTimePickerLocale.bn: _StringsBn(),
  DateTimePickerLocale.ar: _StringsAr(),
  DateTimePickerLocale.jp: _StringsJp(),
  DateTimePickerLocale.ru: _StringsRu(),
  DateTimePickerLocale.de: _StringsDe(),
  DateTimePickerLocale.ko: _StringsKo(),
  DateTimePickerLocale.it: _StringsIt(),
  DateTimePickerLocale.hu: _StringsHu(),
  DateTimePickerLocale.he: _StringsHe(),
  DateTimePickerLocale.id: _StringsId(),
  DateTimePickerLocale.tr: _StringsTr(),
  DateTimePickerLocale.no_nb: _StringsNoNb(),
  DateTimePickerLocale.no_nn: _StringsNoNn(),
  DateTimePickerLocale.nl: _StringsNl(),
  DateTimePickerLocale.fr: _StringsFr(),
  DateTimePickerLocale.th: _StringsTh(),
  DateTimePickerLocale.lt: _StringsLt(),
  DateTimePickerLocale.ht: _StringsHt(),
  DateTimePickerLocale.sv: _StringsSv(),
};

///date pciker localizetion
class DatePickerI18n {
  /// Get done button text
  static String getLocaleDone(DateTimePickerLocale locale) {
    final _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    return i18n.getDoneText();
  }

  /// Get cancel button text
  static String getLocaleCancel(DateTimePickerLocale locale) {
    final _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    return i18n.getCancelText();
  }

  /// Get locale month array
  static List<String> getLocaleMonths(DateTimePickerLocale? locale) {
    final _StringsI18n i18n = datePickerI18n[locale!] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    final List<String> months = i18n.getMonths();
    if (months.isNotEmpty) {
      return months;
    }
    return datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!.getMonths();
  }

  /// Get locale week array
  static List<String>? getLocaleWeeks(DateTimePickerLocale? locale,
      {bool isFull = true}) {
    final _StringsI18n? i18n = datePickerI18n[locale!] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT];
    if (isFull) {
      final List<String> weeks = i18n!.getWeeksFull();
      if (weeks.isNotEmpty) {
        return weeks;
      }
      return datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!.getWeeksFull();
    }

    final List<String>? weeks = i18n!.getWeeksShort();
    if (weeks != null && weeks.isNotEmpty) {
      return weeks;
    }

    final List<String> fullWeeks = i18n.getWeeksFull();
    if (fullWeeks.isNotEmpty) {
      return fullWeeks
          .map((String item) => item.substring(0, min(3, item.length)))
          .toList();
    }
    return datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!.getWeeksShort();
  }
}
