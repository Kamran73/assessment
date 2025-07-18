part of '../home.dart';

class _RandomQuote extends StatelessWidget {
  const _RandomQuote();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuoteBloc, QuoteState>(
      listener: (context, state) {
        if (state.getQuote.isFailure) {
          final errMsg =
              (state.getQuote as ViewStateError).failure.errorMessage;

          context.showSnackBar(errMsg);
        }
      },
      builder: (context, state) {
        final isLoading = state.getQuote.isLoading;
        final isSuccess = state.getQuote.isSuccess;
        final isLoadingOrSuccess = isLoading || isSuccess;

        String quoteText = '';
        if (isLoading) {
          quoteText = 'Fetching quote...';
        }
        if (isSuccess) {
          final quote = (state.getQuote as ViewStateSuccess).data as Quote?;
          quoteText = quote?.q ?? '';
        }
        if (isLoadingOrSuccess) {
          return Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(20),
            child: Text(
              quoteText,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
