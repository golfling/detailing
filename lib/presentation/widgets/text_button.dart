import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final Widget text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: 
          
          Theme.of(context).backgroundColor,
        ),
        child: text,
      ),
    );
  }
}
