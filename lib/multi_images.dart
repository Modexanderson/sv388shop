import 'package:flutter/material.dart';

class MultiImages extends StatelessWidget {
  const MultiImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset('assets/images/news_257.jpg'),
    );
  }
}
