import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DemoLocations {
  final Locale locale;

  DemoLocations(this.locale);

  static DemoLocations of(BuildContext context) {
    return Localizations.of<DemoLocations>(context, DemoLocations);
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '你好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocations> {
  DemoLocalizationsDelegate();

  @override
  Future<DemoLocations> load(Locale locale) {
    return SynchronousFuture<DemoLocations>(DemoLocations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<DemoLocations> old) {
    return false;
  }
}
