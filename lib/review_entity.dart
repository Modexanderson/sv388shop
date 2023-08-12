import 'package:flutter/material.dart';

class ReviewEntity extends StatelessWidget {
  final String title;
  final String subtitle;
  final String likes;
  final String timeAgo;
  final List<Widget>? childWidgets;
  const ReviewEntity(
      {required this.title,
      required this.subtitle,
      required this.likes,
      required this.timeAgo,
      this.childWidgets,
      super.key});
  final int rating = 5; // Number of stars

  @override
  Widget build(BuildContext context) {
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
                    child: Text(
                      subtitle,
                      style: const TextStyle(color: Colors.blue),
                    ),
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
                    children: childWidgets ?? [],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
