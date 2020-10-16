import 'package:flutter/material.dart';

class MenuTabs extends StatelessWidget {
  final tabHeadingText;
  MenuTabs(this.tabHeadingText);
  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: Text(
          "$tabHeadingText",
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.w900),
        ),
      
    );
  }
}
