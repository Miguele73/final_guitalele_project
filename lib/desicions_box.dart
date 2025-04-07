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
      color: const Color(0xFFDE7A22),
      width: 300,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.library_music_rounded)),
          Text('Songs'),
        ],
      ),
    );
  }
}
