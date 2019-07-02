import 'package:intl/intl.dart';

class DemoLocalizations {
  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations',
      );

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone',
        args: [name],
      );
}
