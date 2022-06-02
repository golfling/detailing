import 'package:flutter/material.dart';

class DrawerPoint extends StatelessWidget {
  const DrawerPoint({
    Key? key,
    required this.nameOfPoint,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final Widget nameOfPoint;
  final GestureTapCallback onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconTheme(
        data: const IconThemeData(color: Colors.white),
        child: icon,
      ),
      title: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        child: nameOfPoint,
      ),
      onTap: onTap,
    );
  }
}
