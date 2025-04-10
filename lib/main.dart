import 'package:final_guitalele_project/desicion_screen.dart';
import 'package:final_guitalele_project/songs_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SongListScreen(),
    );
  }
}
