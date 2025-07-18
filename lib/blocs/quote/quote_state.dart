part of 'quote_bloc.dart';

@freezed
abstract class QuoteState with _$QuoteState {
  const factory QuoteState({
    @Default(ViewStateInitial<Quote>()) ViewState<Quote> getQuote,
  }) = _QuoteState;
}
