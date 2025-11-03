import 'package:flutter/material.dart';
import 'package:tokuapp/models/phrase.dart';

class BoxPhrase extends StatelessWidget {
  Phrase phrase;
  BoxPhrase({super.key, required this.phrase});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.cyan,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:  12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(phrase.text1 , style: TextStyle(color: Colors.white , fontSize: 22),),
               Text(phrase.text2 , style: TextStyle(color: Colors.white , fontSize: 22) )]),
          ),
          Spacer(flex: 1,),
          IconButton(
            onPressed: () {
              phrase.playsound();
            },
            icon: Padding(
              padding: const EdgeInsets.only(right:  8.0),
              child: Icon(Icons.play_arrow, color: Colors.white, size: 33),
            ),
          ),
        ],
      ),
    );
  }
}
