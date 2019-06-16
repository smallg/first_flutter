import 'package:first_flutter/demo/listview-demo.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: Drawer(
              child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('xxxxx', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('sxss@222.com'),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/225962?s=460&v=4'),),
              ),
              ListTile(
                title: Text('Message', textAlign: TextAlign.right),
                trailing:
                    Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing:
                    Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing:
                    Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => {Navigator.pop(context)},
              )
            ],
          )),
        ));
  }
}
