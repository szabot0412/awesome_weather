import 'dart:ui';

import 'package:awesome_weather/core/dependency_injection/injection.dart';
import 'package:awesome_weather/core/router/app_router.dart';
import 'package:awesome_weather/core/theme/app_theme.dart';
import 'package:awesome_weather/features/forecast/data/datasource/local_forecast_datasource.dart';
import 'package:awesome_weather/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';


Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  Intl.systemLocale = PlatformDispatcher.instance.locale.toString();
  await GetIt.I<LocalForecastDatasource>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Awesome Weather',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('hu'),
        Locale('en'),
      ],
      routerConfig: appRouter,
      theme: AppTheme.getThemeData(brightness: Brightness.light),
      darkTheme: AppTheme.getThemeData(brightness: Brightness.dark)
    );
  }
}
