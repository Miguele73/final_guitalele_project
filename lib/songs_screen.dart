import 'package:flutter/material.dart';
import 'package:final_guitalele_project/desicions_box.dart';
import 'package:final_guitalele_project/one_back_button.dart';

class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  get songs => [
    'Song 1',
    'Song 2',
    'Song 3',
    'Song 4',
    'Song 5',
    'Song 6',
    'Song 7',
    'Song 8',
    'Song 9',
    'Song 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Column(
          children: [
            DesicionsBox(
              color: Color(0xFFDE7A22),
              selectionText: 'Songs',
              imageIcon: ImageIcon(
                AssetImage('assets/iconImages/music-4SongsIcon.png'),
              ),
            ),
            SizedBox(height: 20),

            ListView.builder(
              shrinkWrap: true,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                String song = songs[index];

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(0)),

                          ListTile(
                            tileColor: Color(0xFFBCBABE),
                            title: Text(song),
                            leading: Icon(Icons.music_note),
                            onTap: () {
                              // Handle song selection
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
