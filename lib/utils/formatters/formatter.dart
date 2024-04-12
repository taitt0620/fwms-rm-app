import 'package:intl/intl.dart';

class AppFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd MMMM yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    var parts = amount.toString().split('.');
    parts[0] = parts[0].replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
    return parts.join(',');
  }

  static String formatStatus(String status) {
    if (status == 'NotDeliveredEnough') {
      return status.replaceAll(
          'NotDeliveredEnough', 'Not Delivered Enough'); // or use split
    } else {
      return status;
    }
  }
}
