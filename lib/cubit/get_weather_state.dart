part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}

//function loading
class GetWeatherLoaded extends GetWeatherState {}

//function success
class GetWeatherSuccess extends GetWeatherState {
  final List<WeatherModel>weathers;
  GetWeatherSuccess(this.weathers);
}

//function failed
class GetWeatherFailed extends GetWeatherState {
  final String message;
  GetWeatherFailed(this.message);
}

