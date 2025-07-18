import 'package:dio/dio.dart';

sealed class BaseApi {
  late final Dio _instance;

  Dio get instance => _instance;

  BaseApi({
    required String baseUrl,
    Map<String, dynamic>? headers,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
  }) {
    final options = BaseOptions(
      contentType: 'application/json',
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      baseUrl: baseUrl,
      headers: headers,
    );

    _instance = Dio(options);
  }
}

class QuoteApi extends BaseApi {
  static final QuoteApi _ins = QuoteApi._();

  static QuoteApi get ins => _ins;

  QuoteApi._() : super(baseUrl: 'https://zenquotes.io/api/');
}
