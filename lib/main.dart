import 'package:first_flutter/demo/basic_demo.dart';
import 'package:first_flutter/demo/bottom_navigator.dart';
import 'package:first_flutter/demo/drawer.dart';
import 'package:first_flutter/demo/layout_demo.dart';
import 'package:first_flutter/demo/listview-demo.dart';
import 'package:first_flutter/demo/sliver_demo.dart';
import 'package:first_flutter/demo/view_demo.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        // home: SliverDemo(),
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
              title: Text('Home X'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: () => {debugPrint('search button is pressed!')})
              ],
              elevation: 0.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt)),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
              // ViewDemo(),
              // RichTextDemo(),
              // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
