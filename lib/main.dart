import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/pages/home_page.dart';
import 'package:asl/localization/app_localization.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asl',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(
              titleLarge: kTitleLarge,
              headlineSmall: kHeadlineSmall,
              headlineMedium: kHeadlineMedium,
              displaySmall: kHeadlineMedium,
              displayMedium: kHeadlineMedium,
              displayLarge: kHeadlineMedium,
              bodyLarge: kBodyLarge,
              bodyMedium: kBodyMedium,
            )
            .apply(fontFamily: 'GHAITHSANS'),
        primaryColor: kRootColors,
        colorScheme: const ColorScheme(
          background: kWhitesColor,
          onBackground: kWhitesColor,
          primary: kRootColors,
          secondary: kBlacksColor,
          surface: kBlacksColor,
          error: kRootColors,
          onPrimary: kWhitesColor,
          onSecondary: kRootColors,
          onSurface: kBlacksColor,
          onError: kRootColors,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: kWhitesColor,
      ),
      locale: const Locale(arabic, 'SA'),
      localizationsDelegates: const [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale(english, 'US'), // english, United States
        Locale(arabic, 'SA'), // arabic, Saudi Arabia
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (final locale in supportedLocales) {
          if (locale.languageCode == deviceLocale!.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
