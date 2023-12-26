import 'package:flutter/material.dart';
import 'package:widgets_flutter/views/posts/post1.dart';
import 'package:widgets_flutter/views/posts/post2.dart';
import 'package:widgets_flutter/views/posts/post3.dart';
import 'package:widgets_flutter/views/posts/post4.dart';
import 'package:widgets_flutter/views/posts/post5.dart';
import 'package:widgets_flutter/views/posts/post6.dart';

class page_view extends StatelessWidget {
  const page_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          post1(),
          post2(),
          post4(),
          post5(),
          post3(),
          post6(),
        ],
      ),
    );
  }
}
