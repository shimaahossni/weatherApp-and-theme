import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:themelanguage/config/setting_provider.dart';
import 'package:themelanguage/cubit/get_weather_cubit.dart';
import 'get_weather_view.dart';
import 'no_weather.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if(state is GetWeatherSuccess){
            return GetWeatherView(weatherModel: state.weathers);
          }else if(state is GetWeatherLoaded){
            return CircularProgressIndicator();
          }
          else
          {
            return NoWeather();
          }
  },
)

    );
  }
}
