import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../config/setting_provider.dart';
import '../../cubit/get_weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/widget.dart';

class SearchLayout extends StatefulWidget {
  const SearchLayout({super.key});

  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  TextEditingController cityName=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var vm=Provider.of<SettingProvider>(context);
    Size mediaquery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var locale = AppLocalizations.of(context)!;


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Image.asset("assets/images/searching-find.gif",),
            SizedBox(height: mediaquery.height*.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: cityName,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on, color: vm.isDark()?Colors.white:Colors.black,),
                  hintText: locale.currentlocation,
                  hintStyle: TextStyle(color: vm.isDark()?Colors.white54:Colors.grey),
                  filled: true,
                  fillColor: vm.isDark()?Color(0xFF060E1E):Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),

            SizedBox(height: mediaquery.height*.03,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: vm.isDark()?Color(0xFF060E1E):Colors.green.shade200,

                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),

              onPressed: () async{
                BlocProvider.of<GetWeatherCubit>(context).getWeather(city: cityName.text);            //Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: mediaquery.height*.01,),
                height: 50,
                  width: mediaquery.width*.6,
                  child: Text(locale.search,style: theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.white:Colors.black),textAlign: TextAlign.center,)),
            ),

          ],
        ),
      ),
    );
  }
}
