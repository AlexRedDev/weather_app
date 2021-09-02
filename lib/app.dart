import 'package:flutter/material.dart';
import 'package:weather_app/navigationr.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(),
      home: Navigation(),
    );
  }
}
