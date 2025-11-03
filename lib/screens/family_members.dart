import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/components/box_member.dart';
import 'package:tokuapp/models/member.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});

  List<Member> members = [
    Member(
      image: Image.asset("assets/images/family_members/family_father.png"),
      text1: "chichiouya",
      text2: "father",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_mother.png"),
      text1: "haha",
      text2: "mother",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_older_brother.png"),
      text1: "ani",
      text2: "older brother",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_grandfather.png"),
      text1: "sofu",
      text2: "grandfather",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_older_sister.png"),
      text1: "ane",
      text2: "older sister",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_younger_sister.png"),
      text1: "imouto",
      text2: "younger sister",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_younger_brother.png"),
      text1: "otouto",
      text2: "younger brother",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_daughter.png"),
      text1: "musume",
      text2: "daughter",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_son.png"),
      text1: "musuko",
      text2: "son",
      sound: "assets/sounds/family_members/father.wav",
    ),
    Member(
      image: Image.asset("assets/images/family_members/family_grandmother.png"),
      text1: "sobo",
      text2: "grand mother",
      sound: "assets/sounds/family_members/father.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("family member", style: TextStyle(color: Colors.white)),
      ),

      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (BuildContext context, index) {
          return BoxMember(member: members[index]);
        },
      ),
    );
  }
}
