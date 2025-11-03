import 'package:flutter/material.dart';

class CustomCounter extends StatelessWidget {
  final String text;
  final Color color;
 final Function() ontap;
  const CustomCounter({Key? key, required this.text, required this.color, required this.ontap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsetsGeometry.only(left: 12),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 86,
        color: color,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
