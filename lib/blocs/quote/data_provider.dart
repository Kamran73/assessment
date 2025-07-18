part of 'quote_bloc.dart';

class _DataProvider {

  static Future<Quote> getRandom() async {
    try {
      final quoteApi = QuoteApi.ins;
      final resp = await quoteApi.instance.get('random');
      final quote = Quote.fromJson(resp.data[0]);
      return quote;
    } on DioException catch (ex, st) {
      throw HttpFailure.fromDioException(ex, st);
    } catch (ex, st) {
      throw UnknownFailure.exception(ex, st);
    }
  }
}
