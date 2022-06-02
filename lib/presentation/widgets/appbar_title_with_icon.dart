import 'package:flutter/material.dart';

class AppBarTitleWithIcon extends StatelessWidget {
  const AppBarTitleWithIcon({Key? key, this.icon, this.text = const Text('')})
      : super(key: key);

  final Widget text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: DefaultTextStyle(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            child: text,
          ),
        ),
        if (icon != null) icon!,
      ],
    );
  }
}
