import 'package:intl/intl.dart';

String generateKey(DateTime date) {
  return DateFormat('yyyyMMdd').format(date);
}
