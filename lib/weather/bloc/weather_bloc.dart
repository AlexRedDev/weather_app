import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/repository/repository.dart';
import 'package:weather_app/weather/bloc/weather_event.dart';
import 'package:weather_app/weather/bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherState());
  final repository = Repository();
  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchedWeather) {
      if (state.status == WeatherStatus.initial) {
        yield state.copyWith(
            weather: await repository.fetchWeather(),
            status: WeatherStatus.success);
      }
    }
  }
}
