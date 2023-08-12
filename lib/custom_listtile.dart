import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String? subTitle;
  const CustomListTile({required this.title, this.subTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.fiber_manual_record),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: subTitle != null ? Text(subTitle!) : null,
    );
  }
}
