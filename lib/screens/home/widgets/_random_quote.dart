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

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(errMsg)));
        }
      },
      builder: (context, state) {
        if (state.getQuote.isSuccess) {
          final quote = (state.getQuote as ViewStateSuccess).data as Quote?;
          return Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(20),
            child: Text(
              quote?.q ?? '',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
