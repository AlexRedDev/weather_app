import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

const String _API_KEY = '90776fc802454ba56ed0c09b538dcd46';
const String _URL = 'api.openweathermap.org';

class Repository {
  Future<WeatherModel> fetchWeather() async {
    final response = await http.get(Uri.https(
      _URL,
      '/data/2.5/weather',
      <String, String>{'appid': _API_KEY, 'q': 'Kiev'},
    ));

    if (response.statusCode == 200) {
      try {
        final body = jsonDecode(response.body);
        return WeatherModel.fromJson(body);
      } catch (e) {
        print(e.toString());
      }
    }
    throw Exception('bad status code with response');
  }
}
