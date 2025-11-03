import 'package:flutter/material.dart';
import 'package:tokuapp/components/custom_counter.dart';
import 'package:tokuapp/screens/Numbers.dart';
import 'package:tokuapp/screens/colors_screan.dart';
import 'package:tokuapp/screens/family_members.dart';
import 'package:tokuapp/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffFFF4D9),
        appBar: AppBar(
          title: const Text(
            "TOKU",
            style: TextStyle(color: Colors.white, fontSize: 33),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
            CustomCounter(
              text: "Numbers",
              color: const Color.fromARGB(255, 236, 157, 30),
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Numbers();
                    },
                  ),
                );
              },
            ),
            CustomCounter(
              text: "Family Members",
              color: Colors.green,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FamilyMembers();
                    },
                  ),
                );
              },
            ),
            CustomCounter(
              text: "Colors",
              color: Colors.deepPurple,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColorsScrean();
                    },
                  ),
                );
              },
            ),
            CustomCounter(
              text: "Phrases",
              color: Colors.cyan,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Phrases();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
