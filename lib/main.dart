import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
            .apply(
              fontFamily: 'GHAITHSANS',
            ),
        primaryColor: kRedsColor,
        colorScheme: const ColorScheme(
          primary: kRedsColor,
          secondary: kBlacksColor,
          surface: kBlacksColor,
          background: kBlacksColor,
          error: kRedsColor,
          onPrimary: kWhitesColor,
          onSecondary: kRedsColor,
          onSurface: kBlacksColor,
          onBackground: kWhitesColor,
          onError: kRedsColor,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: kWhitesColor,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
