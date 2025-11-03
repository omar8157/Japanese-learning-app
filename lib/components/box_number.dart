import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/number.dart';

class BoxNumber extends StatelessWidget {
  Number number;
  
  BoxNumber({required this.number });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orange,
      child: Row(
        children: [
          Container(color: Color(0xffFFF3DB), child: number.image),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.text1,
                  style: TextStyle(fontSize: 27, color: Colors.white),
                ),
                Text(
                  number.text2,
                  style: TextStyle(fontSize: 27, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),

          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: Icon(Icons.play_arrow, size: 33, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
