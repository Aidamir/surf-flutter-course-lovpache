import 'package:intl/intl.dart';

String visitDateString(DateTime date) {
  final format = DateFormat('d MMM y');

  return format.format(date);
}
