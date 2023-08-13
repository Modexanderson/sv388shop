import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommentEntity extends StatelessWidget {
  final title;
  final subTitle;
  final image;
  final timeAgo;
  const CommentEntity(
      {this.title,
      this.subTitle,
      required this.image,
      this.timeAgo,
      super.key});
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
    return Padding(
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
            constraints: const BoxConstraints(maxWidth: 184),
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
