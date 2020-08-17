import 'tab2_card.dart';
import 'tab1_card.dart';
import 'tab3_card.dart';
import 'package:flutter/material.dart';

class TabbedAppBarInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[700],
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
              tabs: [
                Tab(
                  icon: Icon(Icons.cloud_circle),
                ),
                Tab(icon: Icon(Icons.collections_bookmark)),
                Tab(icon: Icon(Icons.info)),
              ],
            ),
          ),
          body: TabBarView(children: [
            (Tab1Card()),
            (Tab2Card()),
            (Tab3Card()),
          ]),
        ),
      ),
    );
  }
}

void main() {
  runApp(TabbedAppBarInterface());
}
