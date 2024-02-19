import 'package:intl/intl.dart';

class Formatter {
  static String formatNumber(int number) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formattedNumber;
  }
}
