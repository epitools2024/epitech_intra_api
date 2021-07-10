import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/constants.dart';
import 'package:epitech_intra_api/helpers/endpoints.dart';
import 'package:epitech_intra_api/helpers/logger.dart';

final client = Dio(
  BaseOptions(
    baseUrl: BASE_URL,
    responseType: ResponseType.json,
  ),
);

extension AutologinChecker on EpitechAPI {
  Future<bool> isValidAutologin() async {
    try {
      final res = await client.get('$cleanAutologin');
      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        throw EpitechError(
            error: EpitechErrorType.CONNECTION_TIMEOUT,
            message: 'Check your internet connection');
      }
      return false;
    }
  }
}

extension GetRequest on EpitechAPI {
  Future get(EndPoint ept) async {
    try {
      final res = await client.get('$cleanAutologin/user/$mail/${ept.value}');
      return jsonDecode(res.data);
    } catch (e) {
      if (enableLogs) {
        print(e.toString());
        return e.toString();
      }
    }
  }

  Future getRaw(EndPoint ept, {String specifiers = ''}) async {
    try {
      final res = await client.get('$cleanAutologin/${ept.value}');
      return jsonDecode(res.data);
    } catch (e) {
      if (enableLogs) {
        print(e.toString());
        return e.toString();
      }
    }

    Future getRawDate(
        {required DateTime? start, required DateTime? end}) async {
      try {
        final res = await client.get(
            '$cleanAutologin/${ept.value}/&start=${start.toString().split(" ")[0]}&end=${end.toString().split(" ")[0]}');
        return jsonDecode(res.data);
      } catch (e) {
        if (enableLogs) {
          print(e.toString());
          return e.toString();
        }
      }
    }
  }
}
