import 'package:asl/localization/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? getTr(BuildContext context, String key) {
  return DemoLocalization.of(context).getTrValue(key);
}

// Language Code
const String english = 'en';
const String arabic = 'ar';

Future<void> setLocale(String languageCode) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(arabic, languageCode);
}

Future<Locale> getLocale() async {
  // final Locale appLocale = Localizations.localeOf(context);
  final prefs = await SharedPreferences.getInstance();

  final languageCode = prefs.getString(arabic) ?? arabic;
  return Locale(languageCode);
}
