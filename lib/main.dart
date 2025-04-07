import 'package:final_guitalele_project/desicions_box.dart';
import 'package:final_guitalele_project/one_back_button.dart';
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

      home: Scaffold(
        backgroundColor: const Color(0xFF505160),
        appBar: AppBar(
          backgroundColor: const Color(0xFF505160),
          toolbarHeight: 200,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(32, 64, 32, 32),
            child: Image.asset('assets/logo.png', height: 800, width: 200),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: const OneBackButton(),
        body: Column(
          spacing: 32,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              children: [
                Padding(
                  padding: const EdgeInsets.all(48),

                  child: [
                    DesicionsBox(
                      color: const Color(0xFFDE7A22),
                      selectionText: 'Songs',
                      icon: const Icon(Icons.library_music_rounded),
                    ),

                    DesicionsBox(
                      color: Color(0xFFD5C9B1),
                      selectionText: 'Chords',
                      icon: const Icon(Icons.music_note_rounded),
                    ),
                    DesicionsBox(
                      color: Color(0xFFBCBABE),
                      selectionText: 'Scales',
                      icon: const Icon(Icons.queue_music_rounded),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
