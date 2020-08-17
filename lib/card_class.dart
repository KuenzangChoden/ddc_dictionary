import 'package:flutter/material.dart';

class ChoiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      shadowColor: Colors.amber[500],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          // children: <Widget>[
          //   Icon(choice.icon, size: 128.0, color: textStyle.color),
          //   Text(choice.title, style: textStyle),
          // ],
        ),
      ),
    );
  }
}
