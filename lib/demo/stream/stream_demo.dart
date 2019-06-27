import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink<String> _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('Create a stream.');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    // _streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;
    print('Start listening on a stream.');
    // _streamDemoSubscription =
    //     _streamDemo.listen(onData, onError: onError, onDone: onDone);
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData2, onError: onError, onDone: onDone);
    print('Initialize completed.');
  }

  void onData(String data) {
    print('$data');
  }

  void onData2(String data) {
    setState(() {
      _data = data;
    });
    print('onData2: $data');
  }

  void onError(err) {
    print('Error: $err');
  }

  void onDone() {
    print('done');
  }

  void _pauseStream() {
    print('Pause Stream');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resume Stream');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel Stream');
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream');
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw 'Error';
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '...',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
