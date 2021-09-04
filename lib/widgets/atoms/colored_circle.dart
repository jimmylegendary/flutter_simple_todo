import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredCircle extends StatelessWidget {
  ColoredCircle({
    this.color = Colors.grey,
    this.height = 12,
    this.width = 12,
    this.onTab,
  });

  final Color color;
  final double height;
  final double width;
  Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
      onTap: onTab,
    );
  }
}
