import 'package:flutter/material.dart';
import 'package:widgets_flutter/constants/routes.dart';

class cardView extends StatefulWidget {
  const cardView({super.key});

  @override
  State<cardView> createState() => _cardViewState();
}

class _cardViewState extends State<cardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(simpleCardRoute);
              },
              child: const Text('simple card ')),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(cardInListRoute);
              },
              child: const Text('card in list')),
        ],
      ),
    );
  }
}
