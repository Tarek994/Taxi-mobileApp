import 'package:flutter/material.dart';

class QueryResultLoadingView extends StatelessWidget {
  final String loadingText;

  const QueryResultLoadingView({Key? key, required this.loadingText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator.adaptive(),
        const SizedBox(height: 8),
        Text(
          loadingText,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ));
  }
}
