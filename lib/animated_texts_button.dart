import 'package:flutter/material.dart';
import 'package:sv388shop/typewriter_animation.dart';

class AnimatedTextsButton extends StatelessWidget {
  final intialText;
  final finalText;
  const AnimatedTextsButton(
      {required this.intialText, this.finalText, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        // elevation: MaterialStateProperty.all(10),
        // fixedSize:
        //     MaterialStateProperty.all(const Size.fromWidth(double.maxFinite)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        //   const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        // ),
      ),
      // 'MUA NGAY & GIAO HANG TOAN QUOC'
      child: finalText != null
          ? TypeWriterAnimation(
              intialText: intialText,
              finalText: finalText,
            )
          : Text(intialText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
    );
  }
}
