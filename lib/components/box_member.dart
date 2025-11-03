import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:tokuapp/models/member.dart';

class BoxMember extends StatelessWidget {
   Member member;


  BoxMember({super.key , required this.member});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.green,
      child: Row(
        children: [
          Container(color: Color(0xffFFF3DB), child: member.image),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  member.text1,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  member.text2,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(member.sound));
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.play_arrow, color: Colors.white, size: 33),
            ),
          ),
        ],
      ),
    );
  }
}
