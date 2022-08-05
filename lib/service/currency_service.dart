import 'dart:io';

import 'package:dio/dio.dart';

class CurrencyService {
  static Future getCurrency() async {
    try {
      Response res = await Dio().get("https://nbu.uz/en/exchange-rates/json/");
      if (res.statusCode == HttpStatus.ok) {
        print("Hello");
        return res.data;
      } else {
        return "xato uzingda";
      }
    } on DioError {
      if (DioErrorType == DioErrorType.cancel) {
        return "No Internet";
      } else if (DioErrorType == DioErrorType.connectTimeout) {
        return "Come back later";
      } else {
        return "Ajoyib";
      }
    }
  }
}
