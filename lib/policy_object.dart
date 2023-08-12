import 'package:flutter/material.dart';

class PolicyObject extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final iconSize;
  final contWidth;
  final String? text;
  const PolicyObject(
      {required this.icon,
      this.iconColor,
      this.iconSize,
      this.contWidth,
      this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: contWidth ?? 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: iconColor ?? Colors.grey[200]!,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Icon(icon,
                  size: iconSize ?? 40, color: iconColor ?? Colors.grey[500]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (text != null)
            Text(
              text!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
