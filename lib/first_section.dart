import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

import 'animated_texts_button.dart';
import 'flash_sale_chipper.dart';
import 'text_container.dart';
import 'timer_container.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(30),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trại Giống Sv388 Thomo',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'SV388 SHOP',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      shadows: [
                        Shadow(
                          offset: const Offset(
                              3.0, 3.0), // Adjust the shadow offset
                          blurRadius: 6.0, // Adjust the shadow blur radius
                          color: Colors.black
                              .withOpacity(0.5), // Shadow color and opacity
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 40.0, child: Divider()),
            const Text(
              'Bạn của nhà nông',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextContainer(
                containerCcolor: Colors.grey[800],
                textCcolor: Colors.blue,
                fontSize: 20,
                text: 'MUA NGAY HÔM NAY'),
            const Text(
              '999.000 VNĐ',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const Text(
              '649.000 VNĐ',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thanh toán khi nhận hàng',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Khuyến mãi kết thúc sau',
                      style: TextStyle(),
                    ),
                    // Timer
                    TimerContainer(isCentered: false),
                  ],
                ),
                AnimatedShape(
                  child: ClipPath(
                    clipper: FlashSaleClipper(),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 80,
                      height: 80,
                      color: Colors.red, // Color of the flash sale shape
                      child: const Center(
                        child: Text(
                          'FLASH SALE \n 35%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const AnimatedShape(
                    child: AnimatedTextsButton(intialText: 'MUA NGAY')),
                const SizedBox(width: 20),
                Image.asset(
                  'assets/images/news_331.jpg',
                  height: 250,
                  width: 200,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/news_582.jpg',
                  height: 250,
                  width: 200,
                ),
              ],
            ),
          ]),
    );
  }
}
