import 'package:flutter/material.dart';
import 'package:first_flutter/tabs/first.dart';
import 'package:first_flutter/tabs/second.dart';
import 'package:first_flutter/tabs/third.dart';

void main() {
    runApp(new MaterialApp(
        debugShowCheckedModeBanner: false,
        // Title
        title: "Using Tabs",
        // Home
        theme: new ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.lightGreenAccent,
            backgroundColor: Colors.black12
        ),
        home: new MyHome()));
}

class MyHome extends StatefulWidget {
    @override
    MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
    // Create a tab controller
    TabController controller;

    @override
    void initState() {
        super.initState();

        // Initialize the Tab Controller
        controller = new TabController(length: 3, vsync: this);
    }

    @override
    void dispose() {
        // Dispose of the Tab Controller
        controller.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            body: new TabBarView(
                children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab()],
                controller: controller,
            ),
            bottomNavigationBar: new Material(
                color: Colors.green,
                child: new TabBar(
                    tabs: <Tab>[
                        new Tab(
                            // set icon to the tab
                            icon: new Icon(Icons.favorite),
                            text: 'First',
                        ),
                        new Tab(
                            icon: new Icon(Icons.adb),
                            text: 'Second',
                        ),
                        new Tab(
                            icon: new Icon(Icons.airport_shuttle),
                            text: 'Third',
                        ),
                    ],
                    // setup the controller
                    controller: controller,
                ),
            ),
        );
    }
}