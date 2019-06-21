import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _buttonDemo = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        SizedBox(
          height: 20.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.circular(5.0),
                // ),
                shape: StadiumBorder(),
              )),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0.0,
            // color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(height: 20.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        ),
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: OutlineButton(
                child: Text('OutlineButton'),
                onPressed: () {},
                splashColor: Colors.grey[100],
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              flex: 2,
              child: OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text('OutlineButton.icon'),
                onPressed: () {},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buttonDemo,
          ],
        ),
      ),
    );
  }
}