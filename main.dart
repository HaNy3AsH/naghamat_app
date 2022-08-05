import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  void playMusic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$musicNumber.mp3'));
  }

  Expanded myButton(int musicNumber, Color buttonColor, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom : 1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [ 
                Icon( 
                  Icons.music_note,
                  color: buttonColor,
                  ),
                  SizedBox(width: 20.0),
                Text(
                  buttonText,
                  style: TextStyle(fontSize: 20.0, color: buttonColor),
                ),
              ],
            ),
          ),
          onPressed: () {
            playMusic(musicNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("نغمات"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, Colors.red, "Samsung Galaxy"),
            myButton(2, Colors.blue, "Samsung Note"),
            myButton(3, Colors.purple, "Nokia"),
            myButton(4, Colors.green, "Iphone 11"),
            myButton(5, Colors.brown, "Whatsapp"),
            myButton(6, Colors.black, "Samsung"),
            myButton(7, Colors.orange, "Iphone 6"),
          ],
        ),
      ),
    );
  }
}
