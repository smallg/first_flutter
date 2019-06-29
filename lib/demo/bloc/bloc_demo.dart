import 'package:first_flutter/demo/bloc/counter_bloc_demo.dart';
import 'package:flutter/material.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bloc Demo'),
          elevation: 0.0,
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButton(),
      ),
      bloc: CounterBloc(),
    );
  }
}
