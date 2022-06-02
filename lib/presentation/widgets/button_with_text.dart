import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    Key? key,
    this.onPressed,
    required this.text,
    this.widgetClildColor,
    this.preficsIcon,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.backgroundColor,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget text;
  final Color? widgetClildColor;
  final Color? backgroundColor;
  final Widget? preficsIcon;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (preficsIcon != null)
              IconTheme(
                data: IconThemeData(color: widgetClildColor ?? Colors.white),
                child: preficsIcon!,
              ),
            if (preficsIcon != null) const SizedBox(width: 20),
            DefaultTextStyle(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: widgetClildColor ?? Colors.white,
              ),
              child: text,
            ),
          ],
        ),
      ),
    );
  }
}
