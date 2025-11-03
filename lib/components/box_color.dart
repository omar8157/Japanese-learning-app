import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/color.dart';

class BoxColor extends StatelessWidget {
  BoxColor({super.key, required this.color1});
  ColorModel color1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: 100,

      child: Row(
        children: [
          Container(color: Color(0xffFFF3DB), child: color1.image),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  color1.text1,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  color1.text2,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),

          Spacer(flex: 1),

          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(color1.sound));
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.play_arrow, size: 33, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
