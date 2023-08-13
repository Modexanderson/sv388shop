import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReviewEntity extends StatelessWidget {
  final String title;
  final String subtitle;
  final String likes;
  final String image;
  final String timeAgo;
  final List<Widget>? childWidgets;
  const ReviewEntity(
      {required this.title,
      required this.subtitle,
      required this.likes,
      required this.image,
      required this.timeAgo,
      this.childWidgets,
      super.key});
  final int rating = 5; // Number of stars
  final String linkUrl =
      'https://www.facebook.com/profile.php?id=100064486862460';
  Future<void> _launchLink() async {
    if (await canLaunch(linkUrl)) {
      await launch(linkUrl);
    } else {
      // Handle error
      throw 'Could not launch $linkUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _launchLink,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(image),
              ),
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
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.thumb_up,
                            size: 10,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Handle like button press
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
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
