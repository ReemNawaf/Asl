import 'package:asl/b_application/auth_bloc/sign_in_form/sign_in_form_bloc.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:dartz/dartz.dart' as z;
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
import 'package:asl/b_application/user_bloc/user_form/user_form_bloc.dart';
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
  static void setLocale(BuildContext context, Locale locale) {
    final state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
  }

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<UserFormBloc>(
            create: (context) => getIt<UserFormBloc>()
              ..add(UserFormEvent.initialized(z.optionOf(AppUser.empty())))),
        BlocProvider<LocalTreeBloc>(
          create: (context) =>
              getIt<LocalTreeBloc>()..add(const LocalTreeEvent.loadAllTrees()),
        ),
        BlocProvider<TreeSettingsBloc>(
            create: (context) => getIt<TreeSettingsBloc>()),
        BlocProvider<SignInFormBloc>(
            create: (context) => getIt<SignInFormBloc>()),
        BlocProvider<TreeFormBloc>(create: (cttx) => TreeFormBloc()),
        BlocProvider<NodeFormBloc>(create: (cttx) => getIt<NodeFormBloc>()),
        BlocProvider<DrawTreeBloc>(create: (cttx) => getIt<DrawTreeBloc>()),
        BlocProvider<PartnerFormBloc>(
            create: (context) => getIt<PartnerFormBloc>()),
        BlocProvider<ChildFormBloc>(
            create: (context) => getIt<ChildFormBloc>()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Asl أصل',
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
              .apply(fontFamily: 'the_year_of_handicrafts'),
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
        locale: _locale,
        localizationsDelegates: const [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale(arabic, 'SA'), // arabic, Saudi Arabia
          Locale(english, 'US'), // english, United States
        ],
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          return supportedLocales.first;
        },
      ),
    );
  }
}
