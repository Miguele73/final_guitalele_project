import 'package:flutter/material.dart';

class DesicionsBox extends StatelessWidget {
  final Color color;
  final String selectionText;
  final Icon icon;
  const DesicionsBox({
    super.key,
    required this.color,
    required this.selectionText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),

      width: 300,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: icon),
          Text(selectionText),
        ],
      ),
    );
  }
}
