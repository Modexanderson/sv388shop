import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

import 'animated_texts_button.dart';
import 'flash_sale_chipper.dart';

class SixthSection extends StatefulWidget {
  const SixthSection({super.key});

  @override
  State<SixthSection> createState() => _SixthSectionState();
}

class _SixthSectionState extends State<SixthSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        AnimatedTextsButton(intialText: 'BÁN CHẠY'),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
          ],
        ),
        const SizedBox(width: 20.0, child: Divider()),
        const Text('Bạn của nhà nông'),
        const SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              'assets/images/news_331.jpg',
              height: 250,
              // width: 250,
            ),
            Positioned(
              top: 3,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset(
                        'assets/images/news_307.jpg',
                        height: 250,
                        // width: 250,
                      ),
                      const Positioned(
                        top: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '999.000 VNĐ',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            Text(
                              '649.000 VNĐ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 3,
                        right: 7, // Adjust the position as needed

                        child: AnimatedShape(
                          child: ClipPath(
                            clipper: FlashSaleClipper(),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: 80,
                              height: 80,
                              color:
                                  Colors.red, // Color of the flash sale shape
                              child: const Center(
                                child: Text(
                                  'GIẢM \n 35%',
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
