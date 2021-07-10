import 'package:dio/dio.dart';
import 'package:epitech_intra_api/helpers/constants.dart';

final client = Dio(
  BaseOptions(
    baseUrl: BASE_URL,
    responseType: ResponseType.json,
  ),
);
