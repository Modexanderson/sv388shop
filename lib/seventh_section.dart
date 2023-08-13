import 'package:flutter/material.dart';

import 'custom_listtile.dart';

class SeventhSection extends StatelessWidget {
  const SeventhSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: const Card(
        elevation: 5,
        margin: EdgeInsets.all(20),
        // color: Colors.white,
        child: Column(children: [
          CustomListTile(
              title: 'Thanh toán khi nhận',
              subTitle: 'Nhận hàng và kiểm tra hàng rồi mới thanh toán'),
          CustomListTile(
              title: 'Đổi trả 365 ngày',
              subTitle:
                  'Sản phẩm không đúng cam kết, nhầm mã được đổi trả thoải mái '),
          CustomListTile(
              title: 'Giao hàng toàn quốc',
              subTitle: 'Giao hàng siêu tốc khắp các tỉnh thành trên cả nước'),
        ]),
      ),
    );
  }
}
