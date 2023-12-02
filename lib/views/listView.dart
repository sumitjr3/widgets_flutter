import 'package:flutter/material.dart';
import 'package:widgets_flutter/constants/routes.dart';

class ListViewActivity extends StatefulWidget {
  const ListViewActivity({super.key});

  @override
  State<ListViewActivity> createState() => _ListViewActivityState();
}

class _ListViewActivityState extends State<ListViewActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(staticListRoute);
                },
                child: const Text('static list')),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(listviewBuilderRoute);
                },
                child: const Text('Using Builder')),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(listviewSeperatorRoute);
                },
                child: const Text('Using separator')),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
