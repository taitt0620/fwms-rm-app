import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://fwms-rmv2.azurewebsites.net/api',
  ),
);
