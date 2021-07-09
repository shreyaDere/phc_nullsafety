import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoLocalizations {
  final Locale locale;
  DemoLocalizations(this.locale);

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  static Map<String, String> _localizedValues;

  Future load() async {
    // ignore: todo
    //TODO: Change this to languageCode if you want to add more languages
    String jsonValue =
        await rootBundle.loadString("assets/lang/${locale.languageCode}.json");
    //String jsonValue = await rootBundle.loadString("assets/lang/en.json");
    Map<String, dynamic> mappedJson =
        json.decode(jsonValue) as Map<String, dynamic>;

    _localizedValues =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslatedValue(String key) {
    return _localizedValues[key];
  }

  static const LocalizationsDelegate<DemoLocalizations> delegate =
      _DemoLocalizationsDelegate();
}

class _DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const _DemoLocalizationsDelegate();
  // ignore: todo
  //TODO: Add supported languages here
  // bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  //bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);
  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);
  @override
  Future<DemoLocalizations> load(Locale locale) async {
    DemoLocalizations localizations = new DemoLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_DemoLocalizationsDelegate old) => false;
}
