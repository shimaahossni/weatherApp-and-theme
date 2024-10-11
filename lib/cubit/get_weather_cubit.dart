import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import '../models/weather_model.dart';
part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());

getWeather({required String city})async{
    try{
      Response response=await Dio().get("https://api.weatherapi.com/v1/forecast.json?key=d4d1213b2e794ed7b6384051241010&q=$city&days=3&aqi=yes");
      List <WeatherModel> weathers=[
        WeatherModel.fromJson(response.data,0),
        WeatherModel.fromJson(response.data,1),
        WeatherModel.fromJson(response.data,2),
      ];
      emit(GetWeatherSuccess(weathers));
    }on DioException catch(e){
      final error=e.response?.data['error']['message']??"Something wrong";
      emit(GetWeatherFailed(error));
    }catch(e){
      emit(GetWeatherFailed(e.toString()));
    }
  }

}
