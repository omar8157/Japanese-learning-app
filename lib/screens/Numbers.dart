import 'package:flutter/material.dart';
import 'package:tokuapp/components/box_number.dart';
import 'package:tokuapp/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class Numbers extends StatelessWidget {
  Numbers({Key? key}) : super(key: key);

  List<Number> numbers = [
    Number(
      image: Image.asset("assets/images/numbers/number_one.png"),
      text1: "Ichui",
      text2: "one",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_two.png"),
      text1: "Ni",
      text2: "two",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_three.png"),
      text1: "San",
      text2: "three",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_four.png"),
      text1: "shi",
      text2: "four",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_five.png"),
      text1: "Go",
      text2: "five",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_six.png"),
      text1: "Roku",
      text2: "six",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_seven.png"),
      text1: "sebun",
      text2: "seven",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_eight.png"),
      text1: "hachi",
      text2: "eight",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_nine.png"),
      text1: "kyu",
      text2: "nine",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    Number(
      image: Image.asset("assets/images/numbers/number_ten.png"),
      text1: "ju",
      text2: "ten",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Numbers",
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return BoxNumber(number: numbers[index]);
        },
      ),
    );
  }
}


