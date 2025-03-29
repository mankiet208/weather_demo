import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String getWeekDayName() {
    return DateFormat('EEEE').format(this);
  }
}
