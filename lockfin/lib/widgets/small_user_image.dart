import 'package:flutter/material.dart';
import 'package:lockfin/widgets/widget.dart';

class SmallImage extends StatelessWidget {
  final double height;
  final double width;

  const SmallImage({
    Key? key,
    required this.imageUrl,
    this.height = 60,
    this.width = 60,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, right: 8),
      height: height,
      width: width,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
