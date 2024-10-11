import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themelanguage/config/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../models/weather_model.dart';



class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.weatherModel,});

  final List <WeatherModel> weatherModel;


  @override
  Widget build(BuildContext context) {
    Size mediaquery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    var vm=Provider.of<SettingProvider>(context);
    //int index=weatherModel.length-1;


    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //info
                SizedBox(width: 10,),
                Container(
                  width: mediaquery.width*0.2,
                  height: mediaquery.height*0.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                   // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(locale.date,style:theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.white:Colors.black),),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ],
            ),

          ],
        )
    );
  }
}
