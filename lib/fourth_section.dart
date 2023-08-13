import 'package:flutter/material.dart';

import 'comment_entity.dart';
import 'review_entity.dart';

class FourthSection extends StatefulWidget {
  const FourthSection({super.key});

  @override
  State<FourthSection> createState() => _FourthSectionState();
}

class _FourthSectionState extends State<FourthSection> {
  final List<String> _dropDownItems = [''];
  final _selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const Text(
            'Tất cả bình luận',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Text(
                '176 Bình luận',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
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
          const ReviewEntity(
              image: 'assets/images/person3.jpg',
              title: 'Văn Hoàng',
              subtitle: 'Hàng giống hình lắm shop. Mình thật sự rất thích',
              likes: '6',
              timeAgo: '30 phút trước'),
          const ReviewEntity(
              image: 'assets/images/person2.jpg',
              title: 'Thanh Nhàn',
              subtitle: 'Có miễn phí ship ko shop ?',
              likes: '2',
              timeAgo: '56 phút trước',
              childWidgets: [
                CommentEntity(
                  image: 'assets/images/shoe.jpg',
                  title: 'KU SHOP',
                  subTitle: 'Có miễn phí nội thành HCM nha',
                  timeAgo: '52 phút trước',
                ),
                CommentEntity(
                  image: 'assets/images/person3.jpg',
                  title: 'Văn Hoàng',
                  subTitle: 'Cảm ơn Shop hàng oke lắm',
                  timeAgo: '43 phút trước',
                ),
                CommentEntity(
                  image: 'assets/images/person1.jpg',
                  title: 'Thị Hằng',
                  subTitle: 'Tư vấn mình muốn mua tặng bạn trai',
                  timeAgo: '40 phút trước',
                ),
                CommentEntity(
                  image: 'assets/images/person2.jpg',
                  title: 'Thanh nhàn',
                  subTitle: 'Cảm ơn ạ',
                  timeAgo: '39 phút trước',
                ),
              ]),
          const ReviewEntity(
              image: 'assets/images/person3.jpg',
              title: 'Văn Hoàng',
              subtitle: 'Tư vấn mình vài mẫu với ạ mình muốn mua thêm',
              likes: '2',
              timeAgo: '1 ngày trước',
              childWidgets: [
                CommentEntity(
                  image: 'assets/images/shoe.jpg',
                  title: 'KU SHOP',
                  subTitle: 'Check inbox cảm ơn quý khách',
                  timeAgo: '20 giờ trước',
                )
              ]),
        ],
      ),
    );
  }
}
