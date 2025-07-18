import 'package:dio/dio.dart';
import 'package:flutter_assessment/blocs/api.dart';
import 'package:flutter_assessment/configs/bloc/failure.dart';
import 'package:flutter_assessment/configs/bloc/state.dart';
import 'package:flutter_assessment/models/qoute/quote.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_event.dart';
part 'quote_state.dart';
part 'quote_bloc.freezed.dart';

part 'data_provider.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(const QuoteState()) {
    on<_GetRandomQuote>((event, emit) async{
      try{
        emit(state.copyWith(getQuote: const ViewStateLoading()));
        final quote = await _DataProvider.getRandom();

        emit(state.copyWith(getQuote: ViewStateSuccess(data: quote)));
      } on Failure catch(e){
        emit(state.copyWith(getQuote: ViewStateError(e)));
      }

    });
  }
}
