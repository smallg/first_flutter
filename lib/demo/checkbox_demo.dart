import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;
  int _radioGroupA = 0;
  bool _switchItemA = false;
  double _sliderItemA = 0.0;
  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('Checkbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
            ),
            Text('RadioGroupValue: $_radioGroupA'),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(
                _switchItemA ? Icons.visibility : Icons.visibility_off,
              ),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _sliderItemA,
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  label: '${_sliderItemA.toInt()}',
                ),
                Text('SliderValue: $_sliderItemA'),
                // Text(
                //   _switchItemA ? '😊' : '😢',
                //   style: TextStyle(fontSize: 32.0),
                // ),
                // Switch(
                //   value: _switchItemA,
                //   onChanged: (value) {
                //     setState(() {
                //       _switchItemA = value;
                //     });
                //   },
                // )
                // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
                // Checkbox(
                //   value: _checkboxItemA,
                //   activeColor: Colors.black,
                //   onChanged: (value) {
                //     setState(() {
                //       _checkboxItemA = value;
                //     });
                //   },
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
