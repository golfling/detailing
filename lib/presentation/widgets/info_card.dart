import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.prefixIconTitle,
    required this.textTittle,
    this.iconTittle,
    required this.bodyWidget,
    this.bottomWidget,
  }) : super(key: key);

  final Widget prefixIconTitle;
  final Widget textTittle;
  final Widget? iconTittle;
  final Widget bodyWidget;
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: const BorderRadius.all(
          Radius.circular(9),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                IconTheme(
                  data: IconThemeData(
                    color: Theme.of(context).textTheme.bodyText2!.color,
                  ),
                  child: prefixIconTitle,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyText2!,
                    child: textTittle,
                  ),
                ),
                if (iconTittle != null)
                  IconTheme(
                    data: IconThemeData(
                      color: Theme.of(context).textTheme.bodyText2!.color,
                    ),
                    child: iconTittle!,
                  ),
              ],
            ),
            const SizedBox(height: 15),
            bodyWidget,
            if (bottomWidget != null) bottomWidget!,
          ],
        ),
      ),
    );
  }
}
