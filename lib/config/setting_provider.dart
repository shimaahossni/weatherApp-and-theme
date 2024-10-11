import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themelanguage/features/change/change_screen.dart';
import 'package:themelanguage/features/home/home_screen.dart';
import 'package:themelanguage/models/weather_model.dart';

class SettingProvider extends ChangeNotifier {
  late final List<WeatherModel> weatherModel;
  late List<Widget> screens;


  SettingProvider() {
    weatherModel = []; // Initialize weatherModel here
    _initScreens();
  }

  void _initScreens() {
    screens = [
      HomeScreen(),
      ChangeScreen(),
    ];
  }

  ///////////////////////////////////////////////theme
  ThemeMode currentTheme = ThemeMode.light;
  changeTheme(ThemeMode newTheme){
    if(currentTheme==newTheme)return;
    currentTheme=newTheme;
    notifyListeners();
  }
  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  /////////////////////////////////////////////language
  String currentLanguage = 'en';
  changeLanguage(String newLanguage) {
    if(currentLanguage==newLanguage)return;
    currentLanguage=newLanguage;
    notifyListeners();
  }
  bool isEnglish() {
    return currentLanguage == 'en';
  }
  String getBackground() {
    return currentTheme==ThemeMode.light?'white':'black';
  }


  /////////////////////////////////////////////layoutScreen
  int currentIndex=0;
  changeIndex(int index){
    currentIndex=index;
    notifyListeners();
  }


}