import 'package:weather_app/model/weather_model.dart';

enum WeatherStatus {
  initial,
  failure,
  success,
}

class WeatherState {
  final WeatherModel weather;
  final WeatherStatus status;

  WeatherState(
      {this.weather = const WeatherModel(),
      this.status = WeatherStatus.initial});

  WeatherState copyWith({WeatherModel? weather, WeatherStatus? status}) {
    return WeatherState(
      weather: weather ?? this.weather,
      status: status ?? this.status,
    );
  }
}
