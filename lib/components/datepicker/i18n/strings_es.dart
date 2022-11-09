part of 'date_picker_i18n.dart';

/// Spanish (ES)
class _StringsEs extends _StringsI18n {
  const _StringsEs();

  @override
  String getCancelText() => 'Cancelar';

  @override
  String getDoneText() => 'Aceptar';

  @override
  List<String> getMonths() => <String>[
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ];

  @override
  List<String> getWeeksFull() =><String> [
      'Lunes',
      'Martes',
      'Miercoles',
      'Jueves',
      'Viernes',
      'Sabado',
      'Domingo',
    ];

  @override
  List<String>? getWeeksShort() => null;
}
