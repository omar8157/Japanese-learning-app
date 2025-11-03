import 'package:audioplayers/audioplayers.dart';

class Phrase {
  String text1;
  String text2;
  String sound;
  Phrase({required this.text1, required this.text2, required this.sound});

  playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
