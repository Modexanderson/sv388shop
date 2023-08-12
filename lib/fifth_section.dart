import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

import 'animated_text.dart';
import 'animated_texts_button.dart';
import 'policy_object.dart';
import 'timer_container.dart';

class FifthSection extends StatelessWidget {
  const FifthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: const Column(
                  children: [
                    PolicyObject(
                      icon: Icons.local_mall,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '583 824',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Text(
                        'Số con giống đã bán ra',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: const Column(
                  children: [
                    PolicyObject(
                      icon: Icons.shopping_cart_outlined,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '471 192',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Text(
                        'Khách hàng đã mua',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset('assets/images/news_264.jpg'),
          const SizedBox(
            height: 20,
          ),
          Container(
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
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[800], shape: BoxShape.rectangle),
                      child: const Text(
                        'GIÁ ƯU ĐÃI',
                        style: TextStyle(color: Colors.white),
                      )),
                  const AnimatedText(
                    text: '649.000 VNĐ',
                    fontSize: 40.0,
                    color: Colors.orange,
                  ),
                  const Text(
                    'Giá gốc: 999.000 VNĐ',
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Khuyến mãi kết thúc sau',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TimerContainer(isCentered: true),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset('assets/images/news_331.jpg'),
                      ),
                      const AnimatedShape(
                        child: AnimatedTextsButton(
                            intialText: 'MUA NGAY',
                            finalText: 'GIAO HANG TOAN QUOC'),
                      )
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
