import 'package:intl/intl.dart';

class DatetimeHelper {
  static const String localeID = "id_ID";

  static String formatStockItemDate(String dateStr) {
    if (dateStr.isEmpty) return "-";
    var datetime = DateFormat('yyyy-MM-dd').parse(dateStr);
    var newFormat = DateFormat('dd/MM/yy').format(datetime);
    return newFormat;
  }

  static bool isExpire(String dateStr){
    if (dateStr.isEmpty) return false;
    var datetime = DateFormat('yyyy-MM-dd').parse(dateStr);
    return DateTime.now().isAfter(datetime);
  }
}
