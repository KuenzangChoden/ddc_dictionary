import 'package:flutter/material.dart';
// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class TabbedAppBarInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber[400],
            centerTitle: true,
            title: const Text(
              'རྫོང་ཁའི་ཚིག་མརྫོད།',
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 2,
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(
                    choice.icon,
                    color: Colors.white,
                    size: 25,
                  ),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '', icon: Icons.help),
  const Choice(
    title: '',
    icon: Icons.collections_bookmark,
  ),
  const Choice(title: '', icon: Icons.info),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

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

void main() {
  runApp(TabbedAppBarInterface());
}
