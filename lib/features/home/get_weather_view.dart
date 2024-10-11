import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/setting_provider.dart';
import '../../models/weather_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class GetWeatherView extends StatelessWidget {
  const GetWeatherView({super.key, required this.weatherModel});
final List <WeatherModel> weatherModel;

  @override
  Widget build(BuildContext context) {
    Size mediaquery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    var vm=Provider.of<SettingProvider>(context);

    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: mediaquery.height*.76,
            width: double.infinity,
            decoration: BoxDecoration(
              color: vm.isDark()?Color(0xFF3A3C47):Color(0xFF5D9CEC),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: mediaquery.height*.07,),

                //current location
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on,color: vm.isDark()?Colors.white:Colors.black,size: mediaquery.width*.075,),
                    Text(locale.currentlocation,style: theme.textTheme.displayMedium?.copyWith(color: vm.isDark()?Colors.white:Colors.black),),
                  ],
                ),

                //CityName
                SizedBox(height: mediaquery.height*.02,),
                Text(weatherModel[0].cityName,style: theme.textTheme.displayLarge?.copyWith(fontSize: 40,color: vm.isDark()?Colors.black:Colors.white),),

                //icon image
                SizedBox(height: mediaquery.height*.02,),
                Image.network("https:${weatherModel[0].icon}",width: mediaquery.width*.5,fit: BoxFit.cover,),


                //current temperature
                SizedBox(height: mediaquery.height*.02,),
                Text(weatherModel[0].avgTemp.toString(),style: theme.textTheme.displayLarge?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),


                //status temperature
                SizedBox(height: mediaquery.height*.02,),
                Text(weatherModel[0].Status,style: theme.textTheme.titleLarge?.copyWith(fontSize: 37,color: vm.isDark()?Colors.black:Colors.white),),


                SizedBox(height: mediaquery.height*.02,),
                Text(locale.today,style: theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),
                Text(weatherModel[0].date,style: theme.textTheme.bodyLarge?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),

                //minTemp and maxTemp
                SizedBox(height: mediaquery.height*.02,),
                Divider(
                  color: vm.isDark()?Colors.white:Colors.white54,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(height: mediaquery.height*.01,),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: vm.isDark()?Colors.white:Colors.white54),
                        borderRadius: BorderRadius.circular(10),
                        color: vm.isDark()?Colors.transparent:Colors.transparent,
                      ),
                      child:Column(
                        children: [
                          Text("Max Temp",style: theme.textTheme.bodySmall?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),
                          Text(weatherModel[0].maxTemp.toString(),style: theme.textTheme.displayMedium?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: vm.isDark()?Colors.white:Colors.white54),
                        borderRadius: BorderRadius.circular(10),
                        color: vm.isDark()?Colors.transparent:Colors.transparent,
                      ),
                      child:Column(
                        children: [
                          Text("Min Temp",style: theme.textTheme.bodySmall?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),
                          Text(weatherModel[0].minTemp.toString(),style: theme.textTheme.displayMedium?.copyWith(color: vm.isDark()?Colors.black:Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: mediaquery.height*.02,),


                //Image.network("weatherModel[0].icon"),
                //Text("weatherModel[0].minTemp.toString()"),
                //Text("weatherModel[0].maxTemp.toString()"),
                //Text("weatherModel[0].Status"),
              ],
            ),
          ),



          //swipper widget


          //listviewbuilder
          Container(height: 200,
          child:  Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: weatherModel.length,
              itemBuilder: (context, index) {
                return Container(
                    //padding: const EdgeInsets.all(10),
                    //margin: const EdgeInsets.all(10),

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //info
                            SizedBox(width: 25,),
                            Container(
                              width: mediaquery.width*0.25,
                              height: mediaquery.height*0.18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                // color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                    color: vm.isDark()?Color(0xFF3A3C47):Color(0xFF5D9CEC),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Text(weatherModel[index].date.substring(8,10),style:theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.white:Colors.black),),
                                  Image.network("https:${weatherModel[0].icon}",fit: BoxFit.cover,),
                                  Text(weatherModel[index].Status,style:theme.textTheme.displaySmall?.copyWith(color: vm.isDark()?Colors.white:Colors.black),),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    )
                );
              },),
          ),
          ),


        ],
      ),
    );
  }
}
