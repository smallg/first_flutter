import 'package:first_flutter/demo/basic_demo.dart';
import 'package:first_flutter/demo/bottom_navigator.dart';
import 'package:first_flutter/demo/drawer.dart';
import 'package:first_flutter/demo/form_demo.dart';
import 'package:first_flutter/demo/layout_demo.dart';
import 'package:first_flutter/demo/listview_demo.dart';
import 'package:first_flutter/demo/material_components.dart';
import 'package:first_flutter/demo/navigator_demo.dart';
import 'package:first_flutter/demo/sliver_demo.dart';
import 'package:first_flutter/demo/state_management_demo.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      // home: NavigatorDemo(),
      // home: SliverDemo(),
      initialRoute: '/state-management',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
      },
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0)),
    );
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
