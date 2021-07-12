import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/constants.dart';
import 'package:epitech_intra_api/helpers/endpoints.dart';
import 'package:epitech_intra_api/helpers/logger.dart';

final client = Dio(
  BaseOptions(
    baseUrl: BASE_URL,
    responseType: ResponseType.json,
    validateStatus: (status) => true,
  ),
);

extension GetRequest on EpitechAPI {
  // T can be List or Map<String, dynamic>
  Future<Either<EpitechErrorType, T>> get<T>(EndPoint ept) async {
    try {
      final res = await client.get('$cleanAutologin/user/$mail${ept.value}');

      if (enableLogs) {
        print('$cleanAutologin/user/$mail${ept.value}');
        print(res.statusCode);
        print(res.data);
      }

      if (res.statusCode == 200 || res.statusCode == 201) {
        return Right(res.data as T);
      }
      return Left(EpitechErrorType.EMPTY_CALL);
    } catch (e) {
      if (enableLogs) {
        print(e.toString());
      }
      return Left(EpitechErrorType.EMPTY_CALL);
    }
  }

  // T can be List or Map<String, dynamic>
  Future<Either<EpitechErrorType, T>> getRaw<T>(EndPoint ept,
      {String specifiers = ''}) async {
    try {
      final res = await client.get('$cleanAutologin${ept.value}');

      if (enableLogs) {
        print('$cleanAutologin${ept.value}');
        print(res.statusCode);
      }

      if (res.statusCode == 200 || res.statusCode == 201) {
        return Right(res.data);
      }
      return Left(EpitechErrorType.EMPTY_CALL);
    } catch (e) {
      if (enableLogs) {
        print(e.toString());
      }
      return Left(EpitechErrorType.EMPTY_CALL);
    }
  }

  // T can be List or Map<String, dynamic>
  Future<Either<EpitechErrorType, T>> getRawDate<T>(
      {required DateTime? start,
      required DateTime? end,
      DateEndPoint ept = DateEndPoint.planning}) async {
    try {
      final res = await client.get(
          '$cleanAutologin${ept.value}start=${start.toString().split(" ")[0].toString()}&end=${end.toString().split(" ")[0].toString()}');

      if (enableLogs) {
        print(
            '$cleanAutologin${ept.value}start=${start.toString().split(" ")[0].toString()}&end=${end.toString().split(" ")[0].toString()}');
        print(res.statusCode);
      }

      if (res.statusCode == 200 || res.statusCode == 201) {
        return Right(res.data);
      }
      return Left(EpitechErrorType.EMPTY_CALL);
    } catch (e) {
      if (enableLogs) {
        print(e.toString());
      }
      return Left(EpitechErrorType.EMPTY_CALL);
    }
  }
}
