import 'package:flutter/material.dart';

import 'policy_object.dart';

class NinthSection extends StatelessWidget {
  final makePhoneCall;
  const NinthSection({required this.makePhoneCall, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(20),
        color: const Color.fromARGB(255, 46, 42, 42),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 30,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 20),
            const SizedBox(
              child: Text(
                  'Bằng TÂM và TÍN. Trại gà Sv388 SHOP luôn tự hào mang đến cho khách hàng những sản phẩm đẳng cấp cùng dịch vụ chất lượng nhất.',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              child: Text('SV388 SHOP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 20)),
            ),
            const Row(
              children: [
                Icon(Icons.home, color: Colors.blue),
                SizedBox(
                  width: 20,
                ),
                Text('Address: 220 Huỳnh Tấn Phát - Tp Hồ Chí Minh',
                    style: TextStyle(color: Colors.blue))
              ],
            ),
            const Row(
              children: [
                Icon(Icons.phone, color: Colors.blue),
                SizedBox(
                  width: 20,
                ),
                Text('0972564781', style: TextStyle(color: Colors.blue))
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PolicyObject(
                  icon: Icons.phone,
                  iconColor: Colors.orange,
                  iconSize: 20.0,
                  contWidth: 30.0,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('HOTLINE (08:00-17:30)',
                        style: TextStyle(color: Colors.white)),
                    TextButton(
                      onPressed: () {
                        makePhoneCall();
                      },
                      child: const Text('0972564781',
                          style: TextStyle(color: Colors.blue)),
                    ),
                    const Text('Tất cả các ngày trong tuần',
                        style: TextStyle(color: Colors.blue)),
                    const SizedBox(height: 50),
                    const Divider(),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
