import 'package:dartz/dartz.dart' as z;
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth/auth_bloc.dart';
import 'package:asl/b_application/user/user_form/user_form_bloc.dart';
import 'package:asl/c_domain/app_user/user.dart';
import 'package:asl/injection.dart';
import 'package:asl/localization/app_localization.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
            create: (context) => getIt<UserFormBloc>()
              ..add(UserFormEvent.initialized(z.optionOf(AppUser.empty())))),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
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
          colorScheme: ColorScheme(
            primary: kRootColors,
            secondary: kStemColors,
            surface: kRootColors[700]!,
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
      ),
    );
  }
}
