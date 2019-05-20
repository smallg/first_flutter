import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';

class FirstTab extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
//            backgroundColor: Colors.cyan,
            backgroundColor: CSSColors.saddleBrown,
            body: new Container(
                child: new Align(
                    alignment: Alignment.topLeft,
                    child: SafeArea(
                        left: true,
                        top: true,
                        right: true,
                        bottom: true,
                        minimum: const EdgeInsets.all(16.0),
                        child: new Column(
                            // center the children
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                new Icon(
                                    Icons.favorite,
                                    size: 160.0,
                                    color: Colors.green,
                                ),
                                new Text(
                                    "First Tab",
                                    style: new TextStyle(color: Colors.white),
                                )
                            ],
                        ),
                    ),
                )
            ),
        );
    }
}