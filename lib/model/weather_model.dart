import 'dart:core';

class WeatherModel {
  final String name;
  final List<_Weather> weather;
  final _Main main;

  const WeatherModel({
    this.name = '',
    this.weather = const <_Weather>[],
    this.main = const _Main(),
  });

  WeatherModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        main = _Main.fromJson(json['main']),
        weather = json['weather']
            .map<_Weather>((json) => _Weather.fromJson(json))
            .toList();
}

class _Weather {
  final String main;
  final String description;
  final String icon;

  _Weather({
    required this.main,
    required this.description,
    required this.icon,
  });

  _Weather.fromJson(Map<String, dynamic> json)
      : main = json['main'],
        description = json['description'],
        icon = json['icon'];
}

class _Main {
  final int temp;
  final int feelsLike;
  final int humidity; // влажность )

  const _Main({
    this.temp = 0,
    this.feelsLike = 0,
    this.humidity = 0,
  });

  // must check return type with server
  _Main.fromJson(Map<String, dynamic> json)
      : temp = json['temp'] is double ? (json['temp']).toInt() : json['temp'],
        feelsLike = json['feels_like'] is double
            ? (json['feels_like']).toInt()
            : json['feels_like'],
        humidity = json['humidity'] is double
            ? (json['humidity']).toInt()
            : json['humidity'];
}
