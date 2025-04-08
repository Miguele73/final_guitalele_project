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
          toolbarHeight: 250,
          backgroundColor: const Color(0xFF505160),
          title: Image.asset('assets/images/logo.png', height: 200, width: 200),

          // flexibleSpace: Padding(
          // padding: const EdgeInsets.all(32),
          // child: SizedBox(
          // height: 200,
          // width: 200,
          // child:
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: const OneBackButton(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(48, 0, 16, 128),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DesicionsBox(
                color: Color(0xFFDE7A22),
                selectionText: 'Songs',
                imageIcon: ImageIcon(
                  AssetImage('assets/iconImages/music-4SongsIcon.png'),
                ),
              ),
              DesicionsBox(
                color: Color(0xFFD5C9B1),
                selectionText: 'Chords',
                imageIcon: ImageIcon(
                  AssetImage('assets/iconImages/ChordIcon.png'),
                ),
              ),
              DesicionsBox(
                color: Color(0xFFBCBABE),
                selectionText: 'Scales',
                imageIcon: ImageIcon(
                  AssetImage('assets/iconImages/ClefIcon.png'),
                  size: 24,
                  color: Colors.white,
                ),
              ),
              DesicionsBox(
                color: Color(0xFFBFDCCF),
                selectionText: 'Chordliste',
                imageIcon: ImageIcon(
                  AssetImage('assets/iconImages/ChordIcon.png'),
                ),
              ),
              DesicionsBox(
                color: Color(0xFFE05858),
                selectionText: 'Meine Favoriten',
                imageIcon: ImageIcon(
                  AssetImage('assets/iconImages/FavoritesBookmark.png'),
                  size: 36,
                  color: const Color.fromARGB(116, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
