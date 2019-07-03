Run project
-
```bash
- Check:
#flutter doctor

- Install packages
#flutter packages get

- Run App
#flutter run
```

- i18n
```bash
flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/demo/i18n/intl/ lib/demo/i18n/intl/demo_localizations.dart
flutter pub pub run intl_translation:generate_from_arb --generated-file-prefix=demo_ --output-dir=lib/demo/i18n/intl/ --no-use-deferred-loading lib/demo/i18n/intl/demo_localizations.dart lib/demo/i18n/intl/intl_*.arb
```

- VSCode
#fn+F5
#fn+^+F5

short key
stf
sls   stateless with scaffold

sfs  stateful with scaffold