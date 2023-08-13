import 'package:flutter/material.dart';
import 'package:sv388shop/typewriter_animation.dart';

class AnimatedTextsButton extends StatelessWidget {
  final intialText;
  final finalText;
  bool? isLoading;
  Function? onPress;
  AnimatedTextsButton(
      {required this.intialText,
      this.finalText,
      this.isLoading,
      this.onPress,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPress!();
      },
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
      child: isLoading == true
          ? CircularProgressIndicator() // Show progress indicator if loading is true
          : finalText != null
              ? TypeWriterAnimation(
                  intialText: intialText,
                  finalText: finalText,
                )
              : Text(
                  intialText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
    );
  }
}
