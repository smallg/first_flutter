import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

// class StateManagementDemo extends StatefulWidget {
//   @override
//   _StateManagementDemoState createState() => _StateManagementDemoState();
// }

// class _StateManagementDemoState extends State<StateManagementDemo> {
//   int _count = 0;

//   void _increaseCount() {
//     setState(() {
//       _count += 1;
//     });
//     print(_count);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CounterProvider(
//       count: _count,
//       increaseCount: _increaseCount,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('StateManagementDemo'),
//           elevation: 0.0,
//         ),
//         body: CounterWrapper(),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: _increaseCount,
//         ),
//       ),
//     );
//   }
// }

class StateManagementDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('StateManagementDemo'),
            elevation: 0.0,
          ),
          body: CounterWrapper(),
          floatingActionButton: ScopedModelDescendant<CounterModel>(
            rebuildOnChange: false,
            builder: (context, _, model) => FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: model.increaseCount,
                ),
          )),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final int count = CounterProvider.of(context).count;
    // final VoidCallback increaseCount =
    //     CounterProvider.of(context).increaseCount;
    // return ActionChip(
    //   label: Text('$count'),
    //   onPressed: increaseCount,
    // );
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
            label: Text('${model.count}'),
            onPressed: model.increaseCount,
          ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count += 1;
    notifyListeners();
  }
}
