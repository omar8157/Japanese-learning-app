import 'package:flutter/material.dart';
import 'package:tokuapp/components/box_color.dart';
import 'package:tokuapp/models/color.dart';

class ColorsScrean extends StatelessWidget {
  ColorsScrean({super.key});

  List<ColorModel> colors = [
    ColorModel(
      image: Image.asset("assets/images/colors/color_black.png"),
      text1: "kuro",
      text2: "black",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/color_brown.png"),
      text1: "chairo",
      text2: "brown",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/color_dusty_yellow.png"),
      text1: "orenji",
      text2: "dusty yellow",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/color_gray.png"),
      text1: "haiiro",
      text2: "gray",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/color_green.png"),
      text1: "midori",
      text2: "green",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/color_red.png"),
      text1: "aka",
      text2: "red",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/color_white.png"),
      text1: "shiro",
      text2: "white",
      sound: "assets/sounds/colors/black.wav",
    ),
    ColorModel(
      image: Image.asset("assets/images/colors/yellow.png"),
      text1: "kiiro",
      text2: "yellow",
      sound: "assets/sounds/colors/black.wav",
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Colors",
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, index) {
          return BoxColor(color1: colors[index]);
        },
      ),
    );
  }
}
