import 'package:flutter/material.dart';

class CommentEntity extends StatelessWidget {
  final title;
  final subTitle;
  final timeAgo;
  const CommentEntity({this.title, this.subTitle, this.timeAgo, super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      subTitle,
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
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
}
