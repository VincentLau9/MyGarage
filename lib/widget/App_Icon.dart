import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final Color iconColor;
  final Color backgroundColor;
  final IconData icon;
  double size;

  AppIcon({Key? key,
    required this.iconColor,
    required this.backgroundColor,
    required this.icon,
    required this.size,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
