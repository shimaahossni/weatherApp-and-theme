import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:themelanguage/config/setting_provider.dart';



class ChangeScreen extends StatefulWidget {
  static const String routeApp = 'ChangeScreen';
  const ChangeScreen({super.key});

  @override
  State<ChangeScreen> createState() => _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  final List<String> languageList = [
    'English',
    'عربي'
  ];

  final List<String> themeList = [
    'light',
    'dark'
  ];

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    var vm=Provider.of<SettingProvider>(context);
    Size mediaQuery=MediaQuery.of(context).size;




    return Scaffold(
      //  backgroundColor: vm.currentTheme==ThemeMode.light?Colors.white:Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(locale.language,style: theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.white:Colors.black),),
              ],
            ),
            SizedBox(height: mediaQuery.height*.02,),
            CustomDropdown<String>(
              decoration: CustomDropdownDecoration(
                //background of dropdownlist
                expandedFillColor: vm.isDark()?Color(0xFF060E1E):Colors.green.shade200,
                closedFillColor: vm.isDark()?Color(0xFF060E1E):Colors.green.shade100,
                closedSuffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                  color: vm.isDark()?Colors.white:Colors.black,
                ),
                expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_sharp,
                  color: vm.isDark()?Colors.white:Colors.black,
                ),
              ),
              items: languageList ,
              initialItem: vm.currentLanguage=='en'?"English":"عربي",
              onChanged: (value) {
                if(value=='English'){
                  vm.changeLanguage('en');
                }else if(value=="عربي"){
                  vm.changeLanguage('ar');
                }
                print(value);
              },
            ),

            SizedBox(height: mediaQuery.height*.07,),

            Row(
              children: [
                Text(locale.themeMode,style: theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.white:Colors.black),),
              ],
            ),
            CustomDropdown<String>(
              items: themeList ,
              initialItem: vm.isDark()?'dark':'light',
              decoration: CustomDropdownDecoration(
                //background of dropdowns
                expandedFillColor: vm.isDark()?Color(0xFF060E1E):Colors.green.shade200,
                closedFillColor: vm.isDark()?Color(0xFF060E1E):Colors.green.shade100,
                closedSuffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                  color: vm.isDark()?Colors.white:Colors.black,
                ),
                expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_sharp,
                  color: vm.isDark()?Colors.white:Colors.black,
                ),
              ),
              onChanged: (value) {
                if(value=='light'){
                  vm.changeTheme(ThemeMode.light);
                }else if(value=="dark"){
                  vm.changeTheme(ThemeMode.dark);
                }
               // print(value);
              },
            ),

           // Text(locale.english,style: theme.textTheme.titleLarge,),

          ],
        ),
      ),
    );
  }
}
