import 'package:dio/dio.dart';
import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/logger.dart';
import 'package:epitech_intra_api/helpers/constants.dart';

final client = Dio(
  BaseOptions(
    baseUrl: BASE_URL,
    responseType: ResponseType.json,
    validateStatus: (status) => true,
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
    } catch (e) {
      return false;
    }
  }
}
