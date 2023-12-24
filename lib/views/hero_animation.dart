import 'package:flutter/material.dart';
import 'package:widgets_flutter/constants/routes.dart';

class hero_animation_view extends StatefulWidget {
  const hero_animation_view({super.key});

  @override
  State<hero_animation_view> createState() => _hero_animation_viewState();
}

class _hero_animation_viewState extends State<hero_animation_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('Hero animation'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(hero_detailed_screenRoute);
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                'lib/assets/images/image.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
