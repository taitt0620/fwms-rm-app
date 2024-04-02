import 'package:dio/dio.dart';
import 'package:fwms_rm_app/utils/constants/api_constants.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: APIConstatnts.baseURL,
  ),
);
