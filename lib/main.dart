import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:themelanguage/config/application_theme_manager.dart';
import 'package:themelanguage/config/setting_provider.dart';
import 'package:themelanguage/cubit/get_weather_cubit.dart';
import 'package:themelanguage/features/change/change_screen.dart';
import 'package:themelanguage/features/layout/layout_screen.dart';
import 'package:themelanguage/features/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => SettingProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);

    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        title: "theme and language",
        debugShowCheckedModeBanner: false,
        theme: ApplicationThemeManager.lightTheme,
        darkTheme: ApplicationThemeManager.darkTheme,
        themeMode: vm.currentTheme,

        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(vm.currentLanguage),

        initialRoute: SplashScreen.routeApp,
        routes: {
          SplashScreen.routeApp: (context) => SplashScreen(),
          LayoutScreen.routeApp: (context) => LayoutScreen(),
          ChangeScreen.routeApp: (context) => ChangeScreen(),
        },

       // home: SplashScreen(),

      ),
    );
  }
}
