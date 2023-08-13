import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

import 'animated_text.dart';
import 'animated_texts_button.dart';
import 'custom_listtile.dart';
import 'policy_object.dart';
import 'text_container.dart';
import 'timer_container.dart';
import 'timer_manager.dart';

class SecondSection extends StatelessWidget {
  final remainingSeconds;
  SecondSection({required this.remainingSeconds, super.key});
  final int rating = 5; // Number of stars
  final TimerManager timerManager = TimerManager();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.remove_red_eye_outlined),
              Text('Đang có 800 người xem sản phẩm này'),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.blue,
            // width: 100,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/news_803.jpg',
                  height: 250,
                  // width: 250,
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            // Đang cóngười xem sản phẩm này800( KIỂM TRƯỚC KHI THANH TOÁN)
                            'Trại giống Sv388 - Sv388 SHOP',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Giống tốt chắp cánh ước mơ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text('4.9'),
                                  Row(
                                    children: List.generate(
                                      rating,
                                      (index) => const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('Đánh giá'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('Đã bán'),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '999.000 VNĐ',
                                style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              const AnimatedText(
                                  text: '649.000 VNĐ',
                                  fontSize: 20.0,
                                  color: Colors.orange),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  'GIẢM 35%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const Text('Tiết kiệm được: 350.000 VNĐ ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Khuyến mãi kết thúc sau',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TimerContainer(
                              remainingSeconds: remainingSeconds,
                              // remainingTime: timerManager.remainingTime,
                              isCentered: false),
                          const Text('Số lượng sản phẩm còn lại: 32'),
                          const SizedBox(
                            height: 20,
                          ),
                          const CustomListTile(title: 'Các loại con giống'),
                          const CustomListTile(title: 'Kỹ thuật nuôi'),
                          const CustomListTile(title: 'Cám, thức ăn chăn nuôi'),
                          const CustomListTile(title: 'Tài liệu tham khảo'),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '( KIỂM TRƯỚC KHI THANH TOÁN)',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              AnimatedShape(
                                child: AnimatedTextsButton(
                                    intialText: 'MUA NGAY',
                                    finalText: 'GIAO HANG TOAN QUOC'),
                              ),
                              const AnimatedShape(
                                  child: Icon(Icons.arrow_back)),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ]),
                  ),
                ]),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PolicyObject(icon: Icons.undo, text: 'ĐỔI TRẢ \n 365 NGÀY'),
              PolicyObject(icon: Icons.money, text: 'THANH TOÁN \n KHI NHẬN')
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PolicyObject(
                  icon: Icons.directions_bus, text: 'GIAO HÀNG \n TOÀN QUỐC'),
              PolicyObject(
                  icon: Icons.safety_check_outlined,
                  text: 'BẢO HÀNH \n 12 THÁNG')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                color: Colors.grey[800],
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 40, horizontal: 20),
                            color: Colors.grey,

                            // height: 100,
                            child: Column(children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const CustomListTile(
                                  title:
                                      'Đây là giống gà có mã đẹp, chất lượng thịt thơm ngon, dễ nuôi, được'),
                              const CustomListTile(
                                  title:
                                      'thị trường ưa chuộng, cho hiệu quả kinh tế cao, cần được bảo tồn và'),
                              const CustomListTile(
                                  title:
                                      'nhân giống để phục vụ chương trình phát triển ngành chăn nuôi gia'),
                              const CustomListTile(
                                  title:
                                      'cầm của địa phương theo hướng SX hàng hóa.'),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset('assets/images/news_307.jpg')
                            ]),
                          ),
                        ),
                        const TextContainer(
                          text: 'CHI TIẾT SẢN PHẨM',
                          fontSize: 30,
                          // containerCcolor: Colors.white,
                        ),
                      ],
                    ),
                    const Text(
                      'MÔ TẢ SẢN PHẨM',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const SizedBox(width: 50, child: Divider()),
                    const SizedBox(
                      height: 300,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/images/news_322.jpg',
                  height: 250,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 300,
            child: Text(
              'SẢN PHẨM UY TÍN DỊCH VỤ - THƯƠNG HIỆU 5 NĂM LIỀN DO NGƯỜI TIÊU DÙNG BÌNH CHỌN',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Multi images
          Image.asset('assets/images/news_257.jpg'),
        ],
      ),
    );
  }
}
