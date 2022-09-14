import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final bool hasGradient;
  final IconData icon;

  const ChoiceButton(
      {super.key,
      required this.width,
      required this.height,
      required this.size,
      required this.icon,
      required this.color,
      required this.hasGradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        gradient: hasGradient
            ? LinearGradient(
                colors: [
                  Color.fromARGB(255, 199, 8, 88),
                  Color.fromARGB(255, 223, 69, 102)
                ],
              )
            : LinearGradient(
                colors: [Colors.white, Colors.white],
              ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(50),
            spreadRadius: 4,
            blurRadius: 4,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Icon(icon, color: color, size: size),
    );
  }
}
