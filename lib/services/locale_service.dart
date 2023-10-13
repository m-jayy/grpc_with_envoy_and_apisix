import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇺🇸", "English", LocaleService.english),
      Language(2, "🇵🇰", "اردو", LocaleService.urdu),
      Language(3, "🇸🇦", "اَلْعَرَبِيَّةُ", LocaleService.arabic),
      Language(4, "🇺🇳", "System", LocaleService.system),
    ];
  }
}

class LocaleService with ReactiveServiceMixin {
  final ReactiveValue<Locale> _currentLocale =
      ReactiveValue<Locale>(_locale(system));
  Locale get currentLocale => _currentLocale.value;

  set currentLocale(Locale locale) => _currentLocale.value = locale;

  void resetCount() => _currentLocale.value = _locale('system');

  LocaleService() {
    listenToReactiveValues([_currentLocale]);
  }

  static const String languageCode = 'languageCode';

//languages code
  static const String english = 'en';
  static const String arabic = 'ar';
  static const String urdu = 'ur';
  static const String system = 'system';

  Future<Locale> setLocale(String languageCode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(languageCode, languageCode);
    currentLocale = _locale(languageCode);
    notifyListeners();
    return currentLocale;
  }

  Future<Locale> getLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String languageCode1 = prefs.getString(languageCode) ?? system;
    return _locale(languageCode1);
  }

  static Locale _locale(String languageCode) {
    switch (languageCode) {
      case english:
        return const Locale(english, 'US');
      case urdu:
        return const Locale(urdu, "PK");
      case arabic:
        return const Locale(arabic, "SA");
      default:
        return WidgetsBinding.instance.window.locales.first;
    }
  }
}
