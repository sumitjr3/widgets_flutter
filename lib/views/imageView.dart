import 'package:flutter/material.dart';

class imageView extends StatefulWidget {
  const imageView({super.key});

  @override
  State<imageView> createState() => _imageViewState();
}

class _imageViewState extends State<imageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('image view'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset('lib/assets/images/image.png'),
        ),
      ),
    );
  }
}
