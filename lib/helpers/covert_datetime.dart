import 'package:date_format/date_format.dart';


class CovertDatetime {
  String displayDatetime(DateTime dateTime){
    String date = formatDate(dateTime, [DD,' ' , d, ' ', M, ' ', yyyy]);
    return date;
  }  
}