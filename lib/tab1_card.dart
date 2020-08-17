import 'package:flutter/material.dart';

class Tab1Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      shadowColor: Colors.amber[500],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          AppBar(
            title: Text('སློབ་སྟོན།'),
            backgroundColor: Colors.orange[800],
            centerTitle: true,
          )
        ],
      ),
    );
  }
}
