import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int rating = 5; // Number of stars

  final List<String> _dropDownItems = [''];
  var _selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SV388 SHOP'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Trại Giống Sv388 Thomo'),
              const Text(
                'SV388 SHOP',
                textAlign: TextAlign.end,
              ),
              const SizedBox(width: 40.0, child: Divider()),
              const Text('Bạn của nhà nông'),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 200, // Set the width of the rectangle
                height: 100, // Set the height of the rectangle
                color: Colors.blue[900], // Set the color of the rectangle
                padding: const EdgeInsets.all(
                    16), // Add padding inside the rectangle
                child: const Text(
                  'MUA NGAY HÔM NAY', // Text to be displayed inside the rectangle
                  style: TextStyle(
                    color: Colors.blue, // Set the color of the text
                  ),
                ),
              ),
              const Text(
                '999.000 VNĐ',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const Text(
                '649.000 VNĐ',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Thanh toán khi nhận hàng',
                        style: TextStyle(),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Khuyến mãi kết thúc sau',
                        style: TextStyle(),
                      ),
                      // Timer
                      timerContainerDemo(false),
                    ],
                  ),
                  //Flash sale
                  // ClipPath(
                  //   clipper: FlashSaleClipper(),
                  //   child: Container(
                  //     width: 150,
                  //     height: 150,
                  //     color: Colors.red, // Color of the flash sale shape
                  //     child: const Center(
                  //       child: Text(
                  //         'FLASH SALE',
                  //         style: TextStyle(
                  //           color: Colors.white, // Text color
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('MUA NGAY'),
                  ),
                  Image.asset(
                    'assets/images/image.jpg',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/image.jpg',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.remove_red_eye_outlined),
                    Text('Đang có 800 người xem sản phẩm này800'),
                  ],
                ),
                Container(
                  color: Colors.blue,
                  // width: 100,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/image.jpg',
                          height: 250,
                          // width: 250,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  // Đang cóngười xem sản phẩm này800( KIỂM TRƯỚC KHI THANH TOÁN)
                                  'Trại giống Sv388 - Sv388 SHOP',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text('Giống tốt chắp cánh ước mơ'),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('999.000 VNĐ'),
                                    const Text('649.000 VNĐ'),
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.black45,
                                            shape: BoxShape.rectangle),
                                        child: const Text(
                                          'GIẢM 35%',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                ),
                                const Text('Tiết kiệm được: 350.000 VNĐ '),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text('Khuyến mãi kết thúc sau'),
                                timerContainerDemo(false),
                                const Text('Số lượng sản phẩm còn lại: 32'),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text('\u2022 Các loại con giống'),
                                const Text('\u2022 Kỹ thuật nuôi'),
                                const Text('\u2022 Cám, thức ăn chăn nuôi'),
                                const Text('\u2022 Tài liệu tham khảo'),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  '( KIỂM TRƯỚC KHI THANH TOÁN)',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Row(
                                  children: [
                                    animatedTextsButton(
                                        'MUA NGAY & GIAO HANG TOAN QUOC'),
                                    const Icon(Icons.arrow_back),
                                  ],
                                )
                              ]),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    policyObjectDemo(Icons.undo, 'ĐỔI TRẢ \n 365 NGÀY'),
                    policyObjectDemo(Icons.money, 'THANH TOÁN \n KHI NHẬN'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    policyObjectDemo(
                        Icons.directions_bus, 'GIAO HÀNG \n TOÀN QUỐC'),
                    policyObjectDemo(
                        Icons.safety_check_outlined, 'BẢO HÀNH \n 12 THÁNG'),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 20),
                                  color: Colors.blueAccent,

                                  // height: 100,
                                  child: Column(children: [
                                    const Text(
                                        '\u2022 Đây là giống gà có mã đẹp, chất lượng thịt thơm ngon, dễ nuôi, được'),
                                    const Text(
                                        '\u2022 thị trường ưa chuộng, cho hiệu quả kinh tế cao, cần được bảo tồn và'),
                                    const Text(
                                        '\u2022 nhân giống để phục vụ chương trình phát triển ngành chăn nuôi gia'),
                                    const Text(
                                        '\u2022 cầm của địa phương theo hướng SX hàng hóa.'),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset('assets/images/image.jpg')
                                  ]),
                                ),
                              ),
                              Container(
                                // height: 30,
                                color: Colors.white,
                                child: const Text('CHI TIẾT SẢN PHẨM'),
                              ),
                            ],
                          ),
                          const Text('MÔ TẢ SẢN PHẨM'),
                          const Divider(),
                          const SizedBox(
                            height: 300,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/image.jpg',
                        height: 250,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SẢN PHẨM UY TÍN DỊCH VỤ - THƯƠNG HIỆU 5 NĂM LIỀNDO NGƯỜI TIÊU DÙNG BÌNH CHỌN',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Multi images
                Image.asset('assets/images/image.jpg'),
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          //   child: Image.asset('assets/images/image.jpg'),
          // ),
          Padding(
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
                    const Text(
                        'Ưu đãi chỉ dành cho 50 khách đặt hàng đầu tiên'),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: const BoxDecoration(
                            color: Colors.black45, shape: BoxShape.rectangle),
                        child: const Text(
                          'GIÁ ƯU ĐÃI',
                          style: TextStyle(color: Colors.white),
                        )),
                    const Text(
                      '649.000 VNĐ',
                      style: TextStyle(fontSize: 40),
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
                    ),
                    timerContainerDemo(true),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset('assets/images/image.jpg'),
                        ),
                        animatedTextsButton(
                          'MUA NGAY & GIAO HANG TOAN QUOC',
                        )
                      ],
                    ),
                  ]),
            ),
          ),
          // Multi images
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('assets/images/image.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Text('Tất cả bình luận'),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Text('176 Bình luận'),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('Sắp xếp theo'),
                    const SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: _selectedItem,
                      underline: const SizedBox(),
                      items: _dropDownItems
                          .map((entry) => DropdownMenuItem<String>(
                                value: entry,
                                child: Text(entry),
                              ))
                          .toList(),
                      onChanged: (newValue) {
                        setState(() {
                          // _selectedStyle = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                const Divider(),
                reviewEntity(
                  'Văn Hoàng',
                  'Hàng giống hình lắm shop. Mình thật sự rất thích',
                  '6',
                  '30 phút trước',
                  [],
                ),
                reviewEntity('Thanh Nhàn', 'Có miễn phí ship ko shop ?', '2',
                    '56 phút trước', [
                  commentEntity('KU SHOP', 'Có miễn phí nội thành HCM nha',
                      '52 phút trước'),
                  commentEntity(
                      'Văn Hoàng', 'Cảm ơn Shop hàng oke lắm', '43 phút trước'),
                  commentEntity('Thị Hằng',
                      'Tư vấn mình muốn mua tặng bạn trai', '40 phút trước'),
                  commentEntity('Thanh nhàn', 'Cảm ơn ạ', '39 phút trước'),
                ]),
                reviewEntity(
                    'Văn Hoàng',
                    'Tư vấn mình vài mẫu với ạ mình muốn mua thêm',
                    '2',
                    '1 ngày trước', [
                  commentEntity('KU SHOP', 'Check inbox cảm ơn quý khách',
                      '20 giờ trước'),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                  ],
                ),
                Image.asset('assets/images/image.jpg'),
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
                        const Text(
                            'Ưu đãi chỉ dành cho 50 khách đặt hàng đầu tiên'),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: const BoxDecoration(
                                color: Colors.black45,
                                shape: BoxShape.rectangle),
                            child: const Text(
                              'GIÁ ƯU ĐÃI',
                              style: TextStyle(color: Colors.white),
                            )),
                        const Text(
                          '649.000 VNĐ',
                          style: TextStyle(fontSize: 40),
                        ),
                        const Text(
                          'Giá gốc: 999.000 VNĐ',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Khuyến mãi kết thúc sau',
                        ),
                        timerContainerDemo(true),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Image.asset('assets/images/image.jpg'),
                            ),
                            animatedTextsButton(
                              'MUA NGAY & GIAO HANG TOAN QUOC',
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              animatedTextsButton('BÁN CHẠY'),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Trại giống Sv388 Thomo'),
                  Text(
                    'SV388 SHOP',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              const SizedBox(width: 20.0, child: Divider()),
              const Text('Bạn của nhà nông'),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/image.jpg',
                    height: 250,
                    // width: 250,
                  ),
                  const Positioned(
                    top: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '999.000 VNĐ',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('649.000 VNĐ'),
                          ],
                        ),
                        //Flash sale
                        // ClipPath(
                        //   clipper: FlashSaleClipper(),
                        //   child: Container(
                        //     width: 150,
                        //     height: 150,
                        //     color: Colors.red, // Color of the flash sale shape
                        //     child: const Center(
                        //       child: Text(
                        //         'FLASH SALE',
                        //         style: TextStyle(
                        //           color: Colors.white, // Text color
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                'CAM KẾT THỰC HIỆN CHÍNH SÁCH',
                style: TextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: const Card(
                  elevation: 5,
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(children: [
                    ListTile(
                        leading: Icon(Icons.fiber_manual_record),
                        title: Text('Thanh toán khi nhận'),
                        subtitle: Text(
                            'Nhận hàng và kiểm tra hàng rồi mới thanh toán')),
                    ListTile(
                        leading: Icon(Icons.fiber_manual_record),
                        title: Text('Đổi trả 365 ngày'),
                        subtitle: Text(
                            'Sản phẩm không đúng cam kết, nhầm mã được đổi trả thoải mái ')),
                    ListTile(
                        leading: Icon(Icons.fiber_manual_record),
                        title: Text('Giao hàng toàn quốc'),
                        subtitle: Text(
                            'Giao hàng siêu tốc khắp các tỉnh thành trên cả nước')),
                  ]),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(20),
                  color: const Color.fromARGB(255, 46, 42, 42),
                  child: Column(children: [
                    const SizedBox(height: 20),
                    const Text('Khuyến mãi kết thúc sau'),
                    timerContainerDemo(true),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          const Text('ĐĂNG KÝ ĐẶT MUA NGAY'),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Input 1'),
                          ),
                          const SizedBox(width: 10),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Input 2'),
                          ),
                          const SizedBox(width: 10),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Input 3'),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: DropdownButtonFormField<String>(
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                      hintText: 'Dropdown 1'),
                                  items: ['Option 1', 'Option 2', 'Option 3']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: DropdownButtonFormField<String>(
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                      hintText: 'Dropdown 2'),
                                  items: ['Option A', 'Option B', 'Option C']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    animatedTextsButton('MUA NGAY')
                  ]),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                child: const Card(
                  elevation: 5,
                  margin: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 46, 42, 42),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      SizedBox(height: 20),
                      Text(
                          'Bằng TÂM và TÍN. Trại gà Sv388 SHOP luôn tự hào mang đến cho khách hàng những sản phẩm đẳng cấp cùng dịch vụ chất lượng nhất.'),
                      SizedBox(height: 20),
                      Text('SV388 SHOP'),
                      Row(
                        children: [
                          Icon(Icons.home),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Address: 220 Huỳnh Tấn Phát - Tp Hồ Chí Minh')
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 20,
                          ),
                          Text('0972564781')
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text('HOTLINE (08:00-17:30)'),
                              Text('0972564781'),
                              Text('Tất cả các ngày trong tuần'),
                              SizedBox(height: 50),
                              Divider(),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }

  Widget reviewEntity(
    String title,
    String subtitle,
    String likes,
    String timeAgo,
    List<Widget>? childWidgets,
  ) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Hotpot.png'),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(title),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(subtitle),
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Thích - Phản hồi'),
                      IconButton(
                        icon: const Icon(Icons.thumb_up),
                        onPressed: () {
                          // Handle like button press
                        },
                      ),
                      Text(likes),
                      Text(
                        timeAgo,
                        // style: TextStyle(overflow: TextOverflow.),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: childWidgets!,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget commentEntity(String title, String subtitle, String timeAgo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Hotpot.png'),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: double.infinity),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(title),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      subtitle,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Thích - Phản hồi'),
                    Text(
                      timeAgo,
                      // style: TextStyle(overflow: TextOverflow.),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget timerContainerDemo(bool? isCentered) {
    return Row(
      mainAxisAlignment:
          isCentered! ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.blue[900], // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(16), // Add padding inside the rectangle
              child: const Text(
                '', // Text to be displayed inside the rectangle
                style: TextStyle(
                  color: Colors.blue, // Set the color of the text
                ),
              ),
            ),
            const Text('Ngày')
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.blue[900], // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(16), // Add padding inside the rectangle
              child: const Text(
                '', // Text to be displayed inside the rectangle
                style: TextStyle(
                  color: Colors.blue, // Set the color of the text
                ),
              ),
            ),
            const Text('Giờ')
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.blue[900], // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(16), // Add padding inside the rectangle
              child: const Text(
                '', // Text to be displayed inside the rectangle
                style: TextStyle(
                  color: Colors.blue, // Set the color of the text
                ),
              ),
            ),
            const Text('Phút')
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.blue[900], // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(16), // Add padding inside the rectangle
              child: const Text(
                '', // Text to be displayed inside the rectangle
                style: TextStyle(
                  color: Colors.blue, // Set the color of the text
                ),
              ),
            ),
            const Text('Giây'),
          ],
        ),
      ],
    );
  }

  Widget animatedTextsButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      // 'MUA NGAY & GIAO HANG TOAN QUOC'
      child: Text(
        text,
      ),
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
    );
  }

  Widget policyObjectDemo(IconData icon, String text) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Icon(icon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class FlashSaleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final protrusionHeight = 20.0; // Height of the extruded edge

    path.moveTo(0, protrusionHeight);
    path.quadraticBezierTo(size.width / 2, 0, size.width, protrusionHeight);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
