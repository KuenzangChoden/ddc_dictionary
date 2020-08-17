import 'package:flutter/material.dart';

class Tab3Card extends StatelessWidget {
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
            title: Text('རིམ་ལུགས་ཀྱི་སྐོར།'),
            backgroundColor: Colors.orange[800],
          ),
          SizedBox(
            height: 5,
          ),
          AppBar(
            title: Text('མི་མང་གི་དོན་ལུ་རིམ་ལུགས་བཟོ་མི།'),
            backgroundColor: Colors.orange[800],
          ),
          SizedBox(
            height: 5,
          ),
          AppBar(
            title: Text('རིམ་ལུགས་ཀྱི་ནང་དོན་བཟོ་མི།'),
            backgroundColor: Colors.orange[800],
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
