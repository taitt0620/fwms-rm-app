import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';

class CreateGoodReceiptNoteApiClient {
  final Dio dio;

  CreateGoodReceiptNoteApiClient(this.dio);

  Future<void> createNote({
    required CreateGoodReceiptNote note,
    required String token,
    required String requestId,
  }) async {
    try {
      final response = await dio.post(
        '/good-receipt-note/$requestId/request',
        data: note.toJson(),
        options: Options(headers: {
          'Authorization': 'Bearer $token',
        }),
      );
      if (response.statusCode != 200 && response.statusCode != 400) {
        throw Exception('Failed to create report');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }
}
