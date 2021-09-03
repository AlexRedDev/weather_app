import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/weather/bloc/weather_bloc.dart';
import 'package:weather_app/weather/bloc/weather_event.dart';
import 'package:weather_app/weather/bloc/weather_state.dart';
import 'package:weather_app/widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerNavigation(),
      body: BlocProvider(
        create: (context) => WeatherBloc()..add(FetchedWeather()),
        child: _weatherBody(),
      ),
    );
  }

  BlocBuilder<WeatherBloc, WeatherState> _weatherBody() {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        switch (state.status) {
          case WeatherStatus.failure:
            return failureWidget();
          case WeatherStatus.initial:
            return initialWidget();
          case WeatherStatus.success:
            return successWidget();
        }
      },
    );
  }

  Center successWidget() {
    return Center(
      child: Text('its wor'),
    );
  }

  Center initialWidget() {
    return Center(
      child: Icon(Icons.favorite, color: Colors.red, size: 120),
    );
  }

  Center failureWidget() => Center(child: Text('Upps'));
}
