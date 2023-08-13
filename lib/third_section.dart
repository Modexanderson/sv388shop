import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

import 'animated_text.dart';
import 'animated_texts_button.dart';
import 'text_container.dart';
import 'timer_container.dart';
import 'timer_manager.dart';

class ThirdSection extends StatelessWidget {
  final remainingSeconds;
  ThirdSection({required this.remainingSeconds, super.key});
  final TimerManager timerManager = TimerManager();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Border color
            width: 2.0, // Border width
          ),
        ),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Ưu đãi chỉ dành cho 50 khách đặt hàng đầu tiên'),
              const SizedBox(
                height: 20,
              ),
              TextContainer(
                text: 'GIÁ ƯU ĐÃI',
                containerCcolor: Colors.grey[800],
                textCcolor: Colors.white,
                fontSize: 20,
              ),
              const AnimatedText(
                  text: '649.000 VNĐ', fontSize: 40.0, color: Colors.orange),
              const Text(
                'Giá gốc: 999.000 VNĐ',
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Khuyến mãi kết thúc sau',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TimerContainer(
                  remainingSeconds: remainingSeconds,
                  // remainingTime: timerManager.remainingTime,
                  isCentered: true),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset('assets/images/news_257.jpg',
                        fit: BoxFit.cover),
                  ),
                  AnimatedShape(
                    child: AnimatedTextsButton(
                        intialText: 'MUA NGAY',
                        finalText: 'GIAO HANG TOAN QUOC'),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
