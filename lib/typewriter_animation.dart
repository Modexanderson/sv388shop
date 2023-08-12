import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TypeWriterAnimation extends StatelessWidget {
  final intialText;
  final finalText;

  const TypeWriterAnimation(
      {super.key, required this.intialText, this.finalText});
  @override
  Widget build(BuildContext context) {
    return TyperAnimatedTextKit(
      text: [
        intialText,
        finalText,
      ], // Different texts
      speed: const Duration(milliseconds: 200),
      textStyle: const TextStyle(fontSize: 24.0),
    );
    // return Center(
    //   child: FutureBuilder(
    //     future: Future.delayed(Duration(seconds: 3)),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return Text('Loading...'); // Initial text
    //       }
    //       return TyperAnimatedTextKit(
    //         text: ['Hello, World!', 'Welcome to Flutter!'], // Different texts
    //         speed: Duration(milliseconds: 200),
    //         textStyle: TextStyle(fontSize: 24.0),
    //       );
    //     },
    //   ),
    // );
  }
}
