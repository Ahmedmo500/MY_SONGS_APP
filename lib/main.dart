// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void playMusic(int musicNum) {
      final player = AudioCache();
      player.play('assets_music-$musicNum.mp3');
    }

    Expanded myButton(
      int num,
      String buttonName,
      Color textColor,
    ) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0.8),
          child: RaisedButton(
            onPressed: () {
              playMusic(num);
            },
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.music_note,
                    color: textColor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    buttonName,
                    style: TextStyle(color: textColor, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Audio'),
        backgroundColor: Colors.amber[800],
      ),
      backgroundColor: Colors.amber,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          myButton(1, 'Samsung Galaxy', Colors.red),
          myButton(2, 'Samsung Note', Colors.black),
          myButton(3, 'Nokia', Colors.blue),
          myButton(4, 'iPhone 11', Colors.red),
          myButton(5, 'Whatsapp', Colors.green),
          myButton(6, 'Samsung S7', Colors.red),
          myButton(7, 'iPhone 6', Colors.black),
        ],
      ),
    ));
  }
}
