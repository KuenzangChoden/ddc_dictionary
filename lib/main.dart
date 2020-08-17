import 'package:flutter/material.dart';

class TabbedAppBarInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
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
              tabs: [
                Tab(icon: Icon(Icons.help)),
                Tab(icon: Icon(Icons.collections_bookmark)),
                Tab(icon: Icon(Icons.info)),
              ],
            ),
          ),
          body: TabBarView(children: [
            Text('tab 1'),
            Text('tab 2'),
            Text('tab 3'),
          ]),
        ),
      ),
    );
  }
}

void main() {
  runApp(TabbedAppBarInterface());
}
