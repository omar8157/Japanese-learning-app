import 'package:flutter/material.dart';
import 'package:tokuapp/components/box_phrase.dart';
import 'package:tokuapp/models/phrase.dart';

class Phrases extends StatelessWidget {
  Phrases({super.key});

  List<Phrase> phrases = [
    Phrase(
      text1: "ogenki desu ka'",
      text2: "how are you?",
      sound: "assets/sounds/phrases/how_are_you_feeling.wav",
    ),
    Phrase(
      text1: "kimasu ka'",
      text2: "are you coming?",
      sound: "assets/sounds/phrases/are_you_coming.wav",
    ),
    Phrase(
      text1: "touroku wo wasurenaide",
      text2: "don't forget to subscribe",
      sound: "assets/sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    Phrase(
      text1: "kibun wa dou desu ka",
      text2: "how are you feeling?",
      sound: "assets/sounds/phrases/how_are_you_feeling.wav",
    ),
    Phrase(
      text1: "anime ga daisuki desu",
      text2: "i love anime",
      sound: "assets/sounds/phrases/i_love_anime.wav",
    ),
    Phrase(
      text1: "ogenki desu ka'",
      text2: "how are you?",
      sound: "assets/sounds/phrases/how_are_you_feeling.wav",
    ),
    Phrase(
      text1: "puroguramingu ga daisuki desu",
      text2: "I love programming",
      sound: "assets/sounds/phrases/i_love_programming.wav",
    ),
    Phrase(
      text1: "puroguramingu wa kantan desu",
      text2: "what is your name?",
      sound: "assets/sounds/phrases/what_is_your_name.wav",
    ),
    Phrase(
      text1: "doko e ikimasu ka",
      text2: "where are you going?",
      sound: "assets/sounds/phrases/where_are_you_going.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "phrases",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, index) {
          return BoxPhrase(phrase: phrases[index]);
        },
      ),
    );
  }
}
