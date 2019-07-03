// import 'package:first_flutter/demo/i18n/map/demo_localiztions.dart';
import 'package:first_flutter/demo/i18n/intl/demo_localizations.dart';
import 'package:flutter/material.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              locale.toString(),
            ),
            Text(
              // Localizations.of(context, DemoLocations).title,
              DemoLocalizations.of(context).greet('ninghao'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}
